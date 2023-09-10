import unittest
from variables import testdata


class TestVariables(unittest.TestCase):
    def test_default_user_exists(self):
        self.assertEqual(testdata.USERS[0]['username'], 'Admin')


if __name__ == '__main__':
    unittest.main()
