import json
import requests
from generate_username import username_generator


def get_token(username, password):
    response = requests.get('http://localhost:8080/api/auth/token', auth=(username, password))
    json_res = response.json()
    if 'token' in json_res:
        success = {
            "code": 200,
            "token": json_res['token']
        }
        return success

    err = {
        "code": 400,
        "msg": "Authentication failed"
    }
    return err


def test_get_user():
    token = get_token('.', '.')
    if token['code'] == 200:
        headers = {'Content-type': 'application/json', 'Token': token['token']}
        response = requests.get("http://localhost:8080/api/users/a", headers=headers)
        return response
    return token


test_get_user()


def test_get_users():
    token = get_token('.', '.')
    if token['code'] == 200:
        headers = {'Content-type': 'application/json', 'Token': token['token']}
        response = requests.get("http://localhost:8080/api/users", headers=headers)
        print(response.json())
        return response
    return token


test_get_users()


def test_create_user():
    url = "http://localhost:8080/api/users"
    data = {
        "username": username_generator(),
        "password": "John",
        "firstname": "Clark",
        "lastname": "Rubel",
        "phone": "214214"
    }

    headers = {'Content-type': 'application/json'}
    response = requests.post(url, data=json.dumps(data), headers=headers)
    return response


def test_update_user(username='a', password='a', payload={"firstname": "John"}):
    token = get_token(username, password)
    headers = {'Content-type': 'application/json', 'Token': token['token']}
    url = "http://localhost:8080/api/users/{}".format(username)
    response = requests.put(url, data=json.dumps(payload), headers=headers)
    return response


data = {
    "firstname": "John"
}


test_update_user('a', 'a', data)
