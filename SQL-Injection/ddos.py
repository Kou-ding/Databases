import socket
import threading
import requests

def get():
    while True:
        target = "https://issel10.ee.auth.gr:/users/me"
        
        # Define the headers
        headers = {
            "accept": "application/json",
            "Authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0ZXN0IiwiZXhwIjoxNzMyOTEzMDYwfQ.FFMqJ8JKKNeHYQor4AAO2YXn0WFiNjqVJJ6pBkLqR2c"
        }
        # Make the GET request
        response = requests.get(target, headers=headers)

        # Check the response status code
        if response.status_code == 200:
            print("Request successful!")
            print(response.json())  # If the response is JSON
        else:
            print(f"Request failed with status code {response.status_code}")
            print(response.text)  # Print the response content
    
get()


for i in range(1000):
    thread = threading.Thread(target=get)
    thread.start()
