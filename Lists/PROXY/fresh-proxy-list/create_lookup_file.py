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
    test_url = "http://www.google.com"  # Using Google as a test URL
    try:
        # Set a timeout of 10 seconds for the request
        response = requests.get(test_url, proxies=proxies, timeout=10)
        return response.status_code == 200
    except:
        return False

# URL of the proxy list
url = "https://raw.githubusercontent.com/vakhov/fresh-proxy-list/master/proxylist.csv"

# Output CSV file
csv_filename = "PROXY_ALL_fresh_proxy_list_filtered.csv"

# List to store proxy data
proxy_data = []

# Countries to filter
allowed_countries = {"US", "DE", "IT"}

# Fetch and process proxylist.csv
response = requests.get(url)
if response.status_code == 200:
    print("Fetching and testing proxies...")
    
    # Create a list to store all proxy testing tasks
    test_tasks = []
    with ThreadPoolExecutor(max_workers=20) as executor:
        for line in response.text.strip().split("\n"):
            fields = line.strip().split(";")
            if len(fields) > 7:  # Ensure there are enough fields
                ip = fields[1]
                port = fields[2]
                country_code = fields[6]
                if country_code in allowed_countries:
                    # Submit the proxy testing task
                    future = executor.submit(test_proxy, ip, port)
                    test_tasks.append((future, [ip, port, country_code]))
        
        # Process completed tasks
        for future, proxy_info in test_tasks:
            try:
                if future.result():  # If proxy test was successful
                    proxy_data.append(proxy_info)
                    print(f"Valid proxy found: {proxy_info[0]}:{proxy_info[1]} ({proxy_info[2]})")
            except Exception as e:
                print(f"Error testing proxy {proxy_info[0]}:{proxy_info[1]}: {str(e)}")

# Write to CSV file
with open(csv_filename, "w", newline="", encoding="utf-8") as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(["dest_ip", "dest_port", "country_code"])
    writer.writerows(proxy_data)

print(f"CSV file '{csv_filename}' created successfully with {len(proxy_data)} verified entries.")