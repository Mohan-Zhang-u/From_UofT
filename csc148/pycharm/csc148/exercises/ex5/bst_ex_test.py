import unittest
from bst_ex8 import BinarySearchTree


class BSTItemsTest(unittest.TestCase):

    def test_one(self):
        bst = BinarySearchTree(1)
        self.assertEqual(bst.items_at_depth(1), [1])

    def test_empty(self):
        bst = BinarySearchTree(None)
        self.assertEqual(bst.items_at_depth(1), [])

    def test_big(self):
        bst = BinarySearchTree(10)
        bst.insert(5)
        bst.insert(1)
        bst.insert(7)
        bst.insert(20)
        bst.insert(30)
        bst.insert(25)
        bst.insert(45)
        self.assertEqual(bst.items_at_depth(3), [1, 7, 30])


class BSTLevelsTest(unittest.TestCase):

    def test_one(self):
        bst = BinarySearchTree(1)
        self.assertEqual(bst.levels(), [(1, [1])])

    def test_empty(self):
        bst = BinarySearchTree(None)
        self.assertEqual(bst.levels(), [])

    def test_big(self):
        bst = BinarySearchTree(10)
        bst.insert(5)
        bst.insert(1)
        bst.insert(7)
        bst.insert(20)
        bst.insert(30)
        bst.insert(25)
        bst.insert(45)
        self.assertEqual(bst.levels(), [(1, [10]),
                                        (2, [5, 20]),
                                        (3, [1, 7, 30]),
                                        (4, [25, 45])])


if __name__ == '__main__':
    unittest.main(exit=False)
