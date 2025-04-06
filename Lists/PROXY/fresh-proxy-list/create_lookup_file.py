import requests
import csv

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
    for line in response.text.strip().split("\n"):
        fields = line.strip().split(";")
        if len(fields) > 7:  # Ensure there are enough fields
            ip = fields[1]
            port = fields[2]
            country_code = fields[6]
            if country_code in allowed_countries:
                proxy_data.append([ip, port, country_code])

# Write to CSV file
with open(csv_filename, "w", newline="", encoding="utf-8") as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(["dest_ip", "dest_port", "country_code"])
    writer.writerows(proxy_data)

print(f"CSV file '{csv_filename}' created successfully with {len(proxy_data)} entries.")