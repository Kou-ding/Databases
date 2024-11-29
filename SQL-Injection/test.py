import jwt

token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJ0ZXN0IiwiZXhwIjoxNzMyOTEzMDYwfQ.FFMqJ8JKKNeHYQor4AAO2YXn0WFiNjqVJJ6pBkLqR2c"
decoded = jwt.decode(token, options={"verify_signature": False})
print(decoded)
