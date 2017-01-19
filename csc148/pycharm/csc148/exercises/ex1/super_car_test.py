# Exercise 1 - Car Simulation
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""Exercise 1 TESTS.

Warning: This is an extremely incomplete set of tests!
Add your own to practice writing tests,
and to be confident your code is correct.
"""
import unittest
from super_car import CarManager


class TestCar(unittest.TestCase):

    def setUp(self):
        self.manager = CarManager()
        self.manager.add_car('car1', 2)
        self.manager.add_car('car2', 10)
        self.manager.add_car('car3', 20)
        print('pass1')

    def test_initial_fuel(self):
        self.assertEqual(self.manager.get_car_fuel('car1'), 2)
        self.assertEqual(self.manager.get_car_fuel('car2'), 10)
        self.assertEqual(self.manager.get_car_fuel('car3'), 20)
        print('pass2')

    def test_initial_pos(self):
        pos = self.manager.get_car_position('car1')
        self.assertEqual(pos, (0, 0))
        print('pass3')

    def test_move_simple(self):
        self.manager.move_car('car2', 2, 3)
        pos = self.manager.get_car_position('car2')
        self.assertEqual(pos, (2, 3))
        self.assertEqual(self.manager.get_car_fuel('car2'), 5)
        print('pass4')

    def test_move_just_enough(self):
        self.manager.move_car('car1', 0, 2)
        pos = self.manager.get_car_position('car1')
        self.assertEqual(pos, (0, 2))
        self.assertEqual(self.manager.get_car_fuel('car1'), 0)
        print('pass5')

    def test_move_not_enough(self):
        self.manager.move_car('car1', 3, 5)
        pos = self.manager.get_car_position('car1')
        self.assertEqual(pos, (0, 0))
        self.assertEqual(self.manager.get_car_fuel('car1'), 2)

    def test_move_over(self):
        self.manager.move_car('car1', 7, 8)
        pos = self.manager.get_car_position('car1')
        self.assertEqual(pos, (0, 0))
        self.assertEqual(self.manager.get_car_fuel('car1'), 2)

    def test_move_negative(self):
        self.manager.move_car('car3', 7, 8)
        pos = self.manager.get_car_position('car3')
        self.assertEqual(pos, (7, 8))
        self.assertEqual(self.manager.get_car_fuel('car3'), 5)

if __name__ == '__main__':
    unittest.main()
