import requests
import csv
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

def create_combined_csv(output_filename, proxy_urls):
    print(f"Creating combined CSV file: {output_filename}")
    
    # Countries to filter
    allowed_countries = {"US", "DE", "MP", "AS", "UM", "GU", "PR", "VI"}
    
    unique_proxies = set()
    verified_proxies = []
    
    # First collect all unique proxies with their types
    for url in proxy_urls:
        proxy_type = "socks5" if "SOCKS5" in url else "socks4" if "SOCKS4" in url else "https"
        proxies = download_proxy_list(url)
        for proxy in proxies:
            if ':' in proxy:
                ip, port = proxy.strip().split(':', 1)
                unique_proxies.add((ip.strip(), port.strip(), proxy_type))
    
    print(f"Found {len(unique_proxies)} unique proxies. Testing connections...")
    
    # Test proxies concurrently
    with ThreadPoolExecutor(max_workers=20) as executor:
        test_tasks = []
        
        for ip, port, proxy_type in unique_proxies:
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
    
    # Write verified proxies to CSV
    with open(output_filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["dest_ip", "dest_port", "country_code", "proxy_type"])
        writer.writerows(verified_proxies)
    
    print(f"CSV file '{output_filename}' created successfully with {len(verified_proxies)} verified entries.")

if __name__ == "__main__":
    proxy_urls = [
        "https://raw.githubusercontent.com/roosterkid/openproxylist/refs/heads/main/SOCKS5_RAW.txt",
        "https://raw.githubusercontent.com/roosterkid/openproxylist/refs/heads/main/SOCKS4_RAW.txt",
        "https://raw.githubusercontent.com/roosterkid/openproxylist/refs/heads/main/HTTPS_RAW.txt"
    ]
    
    create_combined_csv("PROXY_ALL_openproxylist.com_list.csv", proxy_urls)