# Exercise 2 - More Stack Exercises
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""Exercise 2, Task 1 TESTS.

Warning: This is an extremely incomplete set of tests!
Add your own to practice writing tests,
and to be confident your code is correct!
"""
import unittest
from stack import Stack
from stack_ex import reverse_top_two, reverse, SmallStackError


class TestStack(unittest.TestCase):

    def test_simple_reverse_top_two(self):
        stack = Stack()
        stack.push(1)
        stack.push(2)
        reverse_top_two(stack)
        self.assertEqual(stack.pop(), 1)
        self.assertEqual(stack.pop(), 2)
        self.assertTrue(stack.is_empty())

    def test_reverse_two_empty(self):
        stack = Stack()
        # Note: this is a test which checks to see if an error is raised.
        with self.assertRaises(SmallStackError):
            # This code is run. A SmallStackError is expected to be raised here.
            reverse_top_two(stack)

    def test_simple_reverse(self):
        stack = Stack()
        stack.push(1)
        stack.push(2)
        reverse(stack)
        self.assertEqual(stack.pop(), 1)
        self.assertEqual(stack.pop(), 2)
        self.assertTrue(stack.is_empty())

    def test_reverse_empty(self):
        stack = Stack()
        reverse(stack)
        self.assertTrue(stack.is_empty())

    def test_reverse_one(self):
        stack = Stack()
        stack.push(1)
        reverse(stack)
        self.assertEqual(stack.pop(), 1)
        self.assertTrue(stack.is_empty())

if __name__ == '__main__':
    unittest.main(exit=False)
