# A simple post request with curl
curl -X 'POST'   'https://issel10.ee.auth.gr/token/'\
  -H 'accept: application/json'\
  -H 'Content-Type: application/json'\
  -d '{
        "username": "testname",
        "password": "testpass",
        "email": "testing@mail.com",
        "address": "World"
}'