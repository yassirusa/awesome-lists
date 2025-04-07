import csv
import re
import requests
from concurrent.futures import ThreadPoolExecutor, as_completed
import time

def test_proxy(ip, port, proxy_type):
    """Test if a proxy is working by attempting to connect to a test URL"""
    proxy = f"{proxy_type}://{ip}:{port}"
    proxies = {
        "http": proxy,
        "https": proxy
    }
    test_url = "http://httpbin.org/ip"  # Using httpbin.org as test URL
    try:
        response = requests.get(test_url, proxies=proxies, timeout=10)
        return response.status_code == 200
    except:
        return False

def get_country(ip):
    """Fetch the country of an IP address using ipinfo.io."""
    try:
        response = requests.get(f"https://ipinfo.io/{ip}/json")
        if response.status_code == 200:
            data = response.json()
            return data.get("country")
    except Exception as e:
        print(f"Error fetching country for IP {ip}: {e}")
    return None

def process_proxies():
    # Define input and output files
    input_file = "all.txt"
    output_file = "PROXY_ALL_monosans_List.csv"

    # Regular expression to match the proxy type, IP, and port
    pattern = re.compile(r"(http|https|socks4|socks5)://([\d\.]+):(\d+)")

    # Countries to filter
    allowed_countries = {"US", "DE", "IT"}
    
    # Read the input file and extract the required fields
    proxy_data = []
    verified_proxies = []
    
    print("Reading proxy list...")
    with open(input_file, "r") as f:
        for line in f:
            match = pattern.match(line.strip())
            if match:
                proxy_type, ip, port = match.groups()
                proxy_data.append([ip, port, proxy_type])

    print(f"Found {len(proxy_data)} proxies. Testing connections...")

    # Test proxies concurrently
    with ThreadPoolExecutor(max_workers=20) as executor:
        test_tasks = []
        
        for ip, port, proxy_type in proxy_data:
            # Get country first
            country = get_country(ip)
            if country in allowed_countries:
                # Submit the proxy testing task
                future = executor.submit(test_proxy, ip, port, proxy_type)
                test_tasks.append((future, (ip, port, country, proxy_type)))
        
        # Process completed tasks
        for future, proxy_info in test_tasks:
            try:
                if future.result():  # If proxy test was successful
                    ip, port, country, proxy_type = proxy_info
                    verified_proxies.append([ip, port, country, proxy_type])
                    print(f"Valid {proxy_type} proxy found: {ip}:{port} ({country})")
            except Exception as e:
                print(f"Error testing proxy {proxy_info[0]}:{proxy_info[1]}: {str(e)}")

    # Write to CSV file
    with open(output_file, "w", newline="") as f:
        writer = csv.writer(f)
        writer.writerow(["dest_ip", "dest_port", "country_code", "proxy_type"])  # Write header
        writer.writerows(verified_proxies)

    print(f"CSV file '{output_file}' created successfully with {len(verified_proxies)} verified entries.")

if __name__ == "__main__":
    process_proxies()