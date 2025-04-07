import os
import pandas as pd
from collections import defaultdict
import requests
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

def process_txt_files(output_csv='PROXY_ALL_hideip_me_List.csv'):
    print("Processing proxy files and testing connections...")
    
    # Countries to filter
    allowed_countries = {"US", "DE", "MP", "AS", "UM", "GU", "PR", "VI"}
    
    data = defaultdict(set)
    files = [f for f in os.listdir() if f.endswith('.txt')]
    verified_proxies = []
    
    # First collect all unique proxies with their metadata
    for file in files:
        with open(file, 'r', encoding='utf-8', errors='replace') as f:
            for line in f:
                parts = line.strip().split(':')
                if len(parts) >= 2:  # Changed to handle both formats (with or without country)
                    dest_ip, dest_port = parts[:2]
                    # Get country from ipinfo.io
                    country = get_country(dest_ip)
                    if country in allowed_countries:
                        data[(dest_ip, dest_port, country)].add(file)
    
    print(f"Found {len(data)} unique proxies from allowed countries. Testing connections...")
    
    # Test proxies concurrently
    with ThreadPoolExecutor(max_workers=20) as executor:
        test_tasks = []
        
        for (ip, port, country), files in data.items():
            # Submit the proxy testing task
            future = executor.submit(test_proxy, ip, port)
            test_tasks.append((future, (ip, port, country, files)))
        
        # Process completed tasks
        for future, proxy_info in test_tasks:
            try:
                if future.result():  # If proxy test was successful
                    ip, port, country, files = proxy_info
                    verified_proxies.append({
                        'dest_ip': ip,
                        'dest_port': port,
                        'dest_country': country,
                        'metadata_file': ', '.join(sorted(files))
                    })
                    print(f"Valid proxy found: {ip}:{port} ({country})")
            except Exception as e:
                print(f"Error testing proxy {proxy_info[0]}:{proxy_info[1]}: {str(e)}")
    
    # Convert verified proxies to DataFrame
    if verified_proxies:
        df = pd.DataFrame(verified_proxies)
        
        # Save to CSV
        df.to_csv(output_csv, index=False, encoding='utf-8')
        print(f"CSV file '{output_csv}' created successfully with {len(verified_proxies)} verified entries.")
    else:
        print("No verified proxies found.")

if __name__ == "__main__":
    process_txt_files()