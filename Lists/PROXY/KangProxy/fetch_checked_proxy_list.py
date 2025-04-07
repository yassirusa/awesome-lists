import requests
import csv
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
import time

def test_proxy(ip, port):
    """Test if a proxy is working by attempting to connect to a test URL"""
    proxy = f"http://{ip}:{port}"
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

def download_proxy_list(url):
    try:
        print(f"Starting download: {url}")
        response = requests.get(url, timeout=10)
        response.raise_for_status()
        proxies = response.text.strip().split('\n')
        print(f"Successfully downloaded {len(proxies)} proxies from {url}.")
        return proxies
    except requests.RequestException as e:
        print(f"Failed to download {url}: {e}")
        return []

def create_csv(output_filename, proxies):
    print(f"Processing proxies and testing connections...")
    
    # Countries to filter
    allowed_countries = {"US", "DE", "IT"}
    verified_proxies = []
    
    # Extract unique IP:Port combinations
    unique_proxies = set()
    for proxy in proxies:
        match = re.match(r'http[s]?://([\d\.]+):(\d+)', proxy)
        if match:
            ip, port = match.groups()
            unique_proxies.add((ip.strip(), port.strip()))
    
    # Test proxies concurrently
    with ThreadPoolExecutor(max_workers=20) as executor:
        test_tasks = []
        
        for ip, port in unique_proxies:
            # Get country first
            country = get_country(ip)
            if country in allowed_countries:
                # Submit the proxy testing task
                future = executor.submit(test_proxy, ip, port)
                test_tasks.append((future, (ip, port, country)))
        
        # Process completed tasks
        for future, proxy_info in test_tasks:
            try:
                if future.result():  # If proxy test was successful
                    verified_proxies.append(proxy_info)
                    print(f"Valid proxy found: {proxy_info[0]}:{proxy_info[1]} ({proxy_info[2]})")
            except Exception as e:
                print(f"Error testing proxy {proxy_info[0]}:{proxy_info[1]}: {str(e)}")
    
    # Write verified proxies to CSV
    with open(output_filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["dest_ip", "dest_port", "country_code"])
        writer.writerows(verified_proxies)
    
    print(f"CSV file '{output_filename}' created successfully with {len(verified_proxies)} verified entries.")

if __name__ == "__main__":
    proxy_url = "https://raw.githubusercontent.com/officialputuid/KangProxy/refs/heads/KangProxy/xResults/RAW.txt"
    output_csv = "PROXY_ALL_kangproxy_List.csv"
    
    proxies = download_proxy_list(proxy_url)
    create_csv(output_csv, proxies)