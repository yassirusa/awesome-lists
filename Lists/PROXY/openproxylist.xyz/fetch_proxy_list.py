import requests
import csv
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

def download_proxy_list(url, output_filename):
    try:
        print(f"Starting download: {url}")
        response = requests.get(url, timeout=10)
        response.raise_for_status()
        proxies = response.text.strip().split('\n')
        
        print(f"Successfully downloaded {len(proxies)} proxies. Testing connections...")
        
        # Countries to filter
        allowed_countries = {"US", "DE", "MP", "AS", "UM", "GU", "PR", "VI"}
        verified_proxies = []
        
        # Test proxies concurrently
        with ThreadPoolExecutor(max_workers=20) as executor:
            test_tasks = []
            
            for proxy in proxies:
                if ':' in proxy:
                    ip, port = proxy.split(':', 1)
                    ip = ip.strip()
                    port = port.strip()
                    
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
                        ip, port, country = proxy_info
                        verified_proxies.append([ip, port, country])
                        print(f"Valid proxy found: {ip}:{port} ({country})")
                except Exception as e:
                    print(f"Error testing proxy {proxy_info[0]}:{proxy_info[1]}: {str(e)}")
        
        # Write verified proxies to CSV
        with open(output_filename, 'w', newline='') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(["dest_ip", "dest_port", "country_code"])
            writer.writerows(verified_proxies)
        
        print(f"CSV file '{output_filename}' created successfully with {len(verified_proxies)} verified entries.")
    except requests.RequestException as e:
        print(f"Failed to download {url}: {e}")

if __name__ == "__main__":
    proxy_url = "https://api.openproxylist.xyz/http.txt"
    output_csv = "PROXY_ALL_openproxy_list.csv"
    download_proxy_list(proxy_url, output_csv)