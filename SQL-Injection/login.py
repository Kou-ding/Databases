import requests

# Define the URL and the payload
url = "https://issel10.ee.auth.gr/token"  # Replace with the actual endpoint
payload = {
    "grant_type": "password",
    "username": "bakauser",
    "password": "qwerty"
}

response = requests.post(url, data=payload)
print(response.status_code)
print(response.json())