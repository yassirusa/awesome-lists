import os
import pandas as pd
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

def process_txt_files(output_csv='PROXY_ALL_TheSpeedX_List.csv'):
    data = []
    files = [f for f in os.listdir() if f.endswith('.txt')]
    
    # Countries to filter
    allowed_countries = {"US", "DE", "IT"}
    verified_proxies = []
    
    print("Reading proxy files and testing connections...")
    with ThreadPoolExecutor(max_workers=20) as executor:
        test_tasks = []
        
        for file in files:
            with open(file, 'r', encoding='utf-8', errors='replace') as f:
                for line in f:
                    parts = line.strip().split(':')
                    if len(parts) >= 2:
                        dest_ip, dest_port = parts[:2]
                        # Get country from ipinfo.io
                        country = get_country(dest_ip)
                        if country in allowed_countries:
                            # Submit the proxy testing task
                            future = executor.submit(test_proxy, dest_ip, dest_port)
                            test_tasks.append((future, (dest_ip, dest_port, country)))
        
        # Process completed tasks
        for future, proxy_info in test_tasks:
            try:
                if future.result():  # If proxy test was successful
                    verified_proxies.append(proxy_info)
                    print(f"Valid proxy found: {proxy_info[0]}:{proxy_info[1]} ({proxy_info[2]})")
            except Exception as e:
                print(f"Error testing proxy {proxy_info[0]}:{proxy_info[1]}: {str(e)}")
    
    # Convert collected data to a DataFrame
    df = pd.DataFrame(verified_proxies, columns=['dest_ip', 'dest_port', 'country'])
    
    # Save to CSV
    df.to_csv(output_csv, index=False, encoding='utf-8')
    print(f"CSV file '{output_csv}' created successfully with {len(verified_proxies)} verified entries.")

if __name__ == "__main__":
    process_txt_files()