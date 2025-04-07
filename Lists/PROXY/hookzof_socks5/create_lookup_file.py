import requests
import csv
import json
import socket
from concurrent.futures import ThreadPoolExecutor, as_completed
import time

# URLs of the proxy lists
urls = {
    "proxy.txt": "https://raw.githubusercontent.com/hookzof/socks5_list/master/proxy.txt",
    "mtproto.json": "https://raw.githubusercontent.com/hookzof/socks5_list/master/tg/mtproto.json",
    "socks.json": "https://raw.githubusercontent.com/hookzof/socks5_list/master/tg/socks.json"
}

# Output CSV file
csv_filename = "PROXY_ALL_hookzof_list.csv"

def test_proxy(ip, port, proxy_type="socks5"):
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

# Function to resolve hostnames to IP addresses
def resolve_host(host):
    try:
        return socket.gethostbyname(host)
    except socket.gaierror:
        return None

def process_proxies():
    # List to store proxy data
    proxy_data = []
    verified_proxies = []
    allowed_countries = {"US", "DE", "IT"}

    # Fetch and process proxy.txt (SOCKS5 proxies)
    print("Processing SOCKS5 proxies...")
    response = requests.get(urls["proxy.txt"])
    if response.status_code == 200:
        for line in response.text.strip().split("\n"):
            if ":" in line:
                ip, port = line.strip().split(":")
                proxy_data.append([ip, port, "proxy.txt", "socks5"])

    # Fetch and process mtproto.json (Telegram MTProto proxies)
    print("Processing MTProto proxies...")
    response = requests.get(urls["mtproto.json"])
    if response.status_code == 200:
        for entry in json.loads(response.text):
            ip = resolve_host(entry["host"])
            if ip:
                proxy_data.append([ip, str(entry["port"]), "mtproto.json", "mtproto"])

    # Fetch and process socks.json (Telegram SOCKS proxies)
    print("Processing Telegram SOCKS proxies...")
    response = requests.get(urls["socks.json"])
    if response.status_code == 200:
        for entry in json.loads(response.text):
            proxy_data.append([entry["ip"], str(entry["port"]), "socks.json", "socks5"])

    print(f"Found {len(proxy_data)} total proxies. Testing connections...")

    # Test proxies concurrently
    with ThreadPoolExecutor(max_workers=20) as executor:
        test_tasks = []
        
        for ip, port, source, proxy_type in proxy_data:
            # Get country first
            country = get_country(ip)
            if country in allowed_countries:
                # Submit the proxy testing task
                future = executor.submit(test_proxy, ip, port, proxy_type)
                test_tasks.append((future, (ip, port, country, source, proxy_type)))
        
        # Process completed tasks
        for future, proxy_info in test_tasks:
            try:
                if future.result():  # If proxy test was successful
                    ip, port, country, source, proxy_type = proxy_info
                    verified_proxies.append([ip, port, country, source, proxy_type])
                    print(f"Valid {proxy_type} proxy found: {ip}:{port} ({country})")
            except Exception as e:
                print(f"Error testing proxy {proxy_info[0]}:{proxy_info[1]}: {str(e)}")

    # Write to CSV file
    with open(csv_filename, "w", newline="", encoding="utf-8") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["dest_ip", "dest_port", "country_code", "metadata_source", "proxy_type"])
        writer.writerows(verified_proxies)

    print(f"CSV file '{csv_filename}' created successfully with {len(verified_proxies)} verified entries.")

if __name__ == "__main__":
    process_proxies()
