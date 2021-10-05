import json
import requests


def test_create_user():
    url = "http://localhost:8080/api/users"
    data = {"username": "Shams1er11",
            "password": "12",
            "firstname": "Abdd22sa",
            "lastname": "Abd",
            "phone": "2142142"}
    headers = {'Content-type': 'application/json'}
    r2 = requests.post(url, data=json.dumps(data), headers=headers)
    print(r2.text)
    print(r2.json())
    code = r2.status_code
    print(code)
    assert code == 201, 'Code does not match'

