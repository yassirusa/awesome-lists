import os
import requests
import csv
import json
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

def download_file(url, filename):
    try:
        print(f"Starting download: {url}")
        response = requests.get(url, timeout=10)
        response.raise_for_status()
        
        with open(filename, 'wb') as file:
            file.write(response.content)
        
        print(f"Successfully downloaded: {filename} ({len(response.content)} bytes)")
    except requests.RequestException as e:
        print(f"Failed to download {url}: {e}")

def create_csv(output_filename, proxy_files):
    print(f"Creating CSV file: {output_filename}")
    csv_header = ["dest_ip", "dest_port", "country_code", "proxy_type"]
    
    # Countries to filter
    allowed_countries = {"US", "DE", "IT"}
    
    # Collect all proxies
    all_proxies = []
    for proxy_file in proxy_files:
        print(f"Processing file: {proxy_file}")
        try:
            with open(proxy_file, 'r') as file:
                proxies = json.load(file)
                print(f"Loaded {len(proxies)} entries from {proxy_file}")
                
                proxy_type = "http"
                if "socks4" in proxy_file:
                    proxy_type = "socks4"
                elif "socks5" in proxy_file:
                    proxy_type = "socks5"
                
                for proxy in proxies:
                    ip = proxy.get("ip", "")
                    port = proxy.get("port", "")
                    country = proxy.get("country", "")
                    
                    # Get country from ipinfo.io if not provided or verify existing country
                    if not country or len(country) != 2:  # If country is not a 2-letter code
                        country = get_country(ip)
                    
                    if country in allowed_countries:
                        all_proxies.append((ip, port, country, proxy_type))
        except (json.JSONDecodeError, FileNotFoundError) as e:
            print(f"Error processing {proxy_file}: {e}")
    
    print(f"Found {len(all_proxies)} proxies from allowed countries. Testing connections...")
    
    # Test proxies concurrently
    verified_proxies = []
    with ThreadPoolExecutor(max_workers=20) as executor:
        test_tasks = []
        
        for ip, port, country, proxy_type in all_proxies:
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
        writer.writerow(csv_header)
        writer.writerows(verified_proxies)
    
    print(f"CSV file '{output_filename}' created successfully with {len(verified_proxies)} verified entries.")

if __name__ == "__main__":
    proxy_urls = {
        "http_proxies.json": "https://raw.githubusercontent.com/sunny9577/proxy-scraper/refs/heads/master/generated/http_proxies.json",
        "socks4_proxies.json": "https://raw.githubusercontent.com/sunny9577/proxy-scraper/refs/heads/master/generated/socks4_proxies.json",
        "socks5_proxies.json": "https://raw.githubusercontent.com/sunny9577/proxy-scraper/refs/heads/master/generated/socks5_proxies.json"
    }
    
    for filename, url in proxy_urls.items():
        download_file(url, filename)
    
    create_csv("PROXY_ALL_sunny9577_list.csv", list(proxy_urls.keys()))