import os
import pandas as pd
import requests
from collections import defaultdict

# Add your ipinfo.io API token here
IPINFO_API_TOKEN = "your_api_token_here"

def get_country(ip):
    """Fetch the country of an IP address using ipinfo.io."""
    try:
        response = requests.get(f"https://ipinfo.io/{ip}?token={IPINFO_API_TOKEN}")
        if response.status_code == 200:
            data = response.json()
            return data.get("country")
    except Exception as e:
        print(f"Error fetching country for IP {ip}: {e}")
    return None

def process_txt_files(output_csv='PROXY_ALL_TheSpeedX_List.csv'):
    data = set()
    files = [f for f in os.listdir() if f.endswith('.txt')]
    
    for file in files:
        with open(file, 'r', encoding='utf-8', errors='replace') as f:
            for line in f:
                parts = line.strip().split(':')
                if len(parts) >= 2:
                    dest_ip, dest_port = parts[:2]
                    country = get_country(dest_ip)
                    if country in {"US", "DE", "IT"}:  # Filter by allowed countries
                        data.add((dest_ip, dest_port, country))  # Include country in the data
    
    # Convert collected data to a DataFrame
    df = pd.DataFrame(list(data), columns=['dest_ip', 'dest_port', 'country'])
    
    # Save to CSV
    df.to_csv(output_csv, index=False, encoding='utf-8')
    print(f"Merged CSV saved as {output_csv}")

if __name__ == "__main__":
    process_txt_files()