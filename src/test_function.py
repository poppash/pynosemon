import unittest
from function import func

class TestUnittest(unittest.TestCase):

    def setUp(self):
        pass
    
    def tearDown(self):
        pass
    
    def test_func(self):
        res = func()
        self.assertEqual(res, 'Hello, world!')

def test_func():
    res = func()
    assert res == 'Hello, world!'
