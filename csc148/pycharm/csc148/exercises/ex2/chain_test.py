# Exercise 2 - A Chain of People
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""Exercise 2, Task 2 TESTS.

Warning: This is an extremely incomplete set of tests!
Add your own to practice writing tests,
and to be confident your code is correct!
"""
import unittest
from chain import PeopleChain, ShortChainError


class TestPeopleChain(unittest.TestCase):

    def setUp(self):
        self.chain = PeopleChain(['Iron Man', 'Janna', 'Kevan'])
        self.empty_chain = PeopleChain([])
        self.one_chain = PeopleChain(['David'])
        self.two_chain = PeopleChain(['Karen', 'Paul'])

    def test_get_leader_simple(self):
        self.assertEqual(self.chain.get_leader(), 'Iron Man')

    def test_get_second_simple(self):
        self.assertEqual(self.chain.get_second(), 'Janna')

    def test_get_third_simple(self):
        self.assertEqual(self.chain.get_third(), 'Kevan')

    def test_get_third_empty(self):
        # Note: this is a test which checks to see if an error is raised.
        with self.assertRaises(ShortChainError):
            # This code is run. A ShortChainError is expected to be raised here.
            self.empty_chain.get_third()

if __name__ == '__main__':
    unittest.main(exit=False)
