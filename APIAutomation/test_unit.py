import unittest

from api import get_token, test_get_user, test_get_users, test_update_user, test_create_user


class TestUsers(unittest.TestCase):

    def test_token_valid_credential(self):
        token = get_token(username='.', password='.')
        self.assertEqual(200, token['code'])

    def test_token_blank_password(self):
        token = get_token(username='.', password='')
        self.assertEqual(400, token['code'])

    def test_token_wrong_password(self):
        token = get_token(username='.', password='')
        self.assertEqual(400, token['code'])

    def test_token_wrong_username(self):
        token = get_token(username='.', password='')
        self.assertEqual(400, token['code'])

    def test_get_user(self):
        user = test_get_user()
        # print(user.json())
        self.assertEqual(200, user.status_code)

    def test_get_users(self):
        users = test_get_users()
        # print(user.json())
        self.assertEqual(200, users.status_code)

    def test_create_user(self):
        user = test_create_user()
        self.assertEqual(201, user.status_code)

    def test_update_user(self):
        payload = {
            "firstname": "Islam1",
            "lastname": "Rubel",
        }
        user = test_update_user(username='a', password='a', payload=payload)
        self.assertEqual(201, user.status_code)


if __name__ == '__main__':
    unittest.main()
