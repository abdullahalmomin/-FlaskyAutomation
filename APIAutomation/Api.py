import json
import requests


# Rest Api Get Request
response = requests.get('http://localhost:8080/api/auth/token', auth=('1', '1'))
print(response)
code = response.status_code
assert code == 200, 'Code does not match'
print(response.text)
Res1 = response.json()
print(response.cookies)
print(response.url)
print(response.encoding)

Res2 = json.loads(response.text)
token = Res2["token"]
print(token)

# Get an individual user data
headers = {'Content-type': 'application/json', 'Token': token}
r = requests.get("http://localhost:8080/api/users/Momin", headers=headers)
print(r.text)

# Get All user data
headers = {'Content-type': 'application/json', 'Token': token}
GetAllUsers = requests.get("http://localhost:8080/api/users", headers=headers)
print(GetAllUsers.text)
Json_Response = GetAllUsers.json()
print(Json_Response)

# Create a new User
url = "http://localhost:8080/api/users"
data = {"username": "Anisul1",
        "password": "Anisul",
        "firstname": "Islam",
        "lastname": "Rubel",
        "phone": "214214"}
headers = {'Content-type': 'application/json'}
r2 = requests.post(url, data=json.dumps(data), headers=headers)
print(r2.text)
print(r2.json())
code = r2.status_code
print(code)
assert code == 201, 'Code does not match'

# Update a new User
response3 = requests.get('http://localhost:8080/api/auth/token', auth=('a', 'a'))
print(response3)
print(response3.text)
Res3 = response3.json()
Res4 = json.loads(response3.text)
token1 = Res4["token"]
print(token1)

# Update an user details
url = "http://localhost:8080/api/users/a"
payload = {
    "firstname": "Anis1",
    "lastname": "Islam"
}
headers = {'Content-type': 'application/json', 'Token': token1}
r2 = requests.put(url, data=json.dumps(payload), headers=headers)
print(r2.text)
print(r2.status_code)

