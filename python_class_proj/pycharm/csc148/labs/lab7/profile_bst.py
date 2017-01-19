import random
import sys

from bst import BinarySearchTree
from timer import Timer


def profile_bst(lst):
    """Return the time an empty BinarySearchTree takes to insert items from 
    <lst>, and the time it takes to then delete items from <lst>.

    Note: you'll need to first create your own BinarySearchTree here.

    @type lst: list
        the list to insert into the BST.
    @rtype: (float, float)
        insertion time, deletion time
    """
    # TODO
    tree = BinarySearchTree(1000000)
    with Timer('insert'):
        for i in lst:
            tree.insert(i)
    with Timer('delete'):
        for i in lst:
            tree.delete(i)



if __name__ == '__main__':
    # Python limits recursion by default. Don't change this line!
    sys.setrecursionlimit(10000)

    sizes = [500, 1000, 2000, 4000]

    # Sorted insert and delete.
    print('--- Sorted ---')
    for size in sizes:
        # TODO: Time insertion and deletion of a sorted list.
        # Use list(range(n)) to create a sorted list of length n.
        lst = list(range(size))
        print('\n')
        profile_bst(lst)

    # Random insert and delete.
    print('\n--- Random ---')
    for size in sizes:
        # TODO: Time insertion and deletion of a random list.
        # Use random.shuffle(lst) to get a shuffled list.
        lst = list(range(size))
        random.shuffle(lst)
        #print('\n' + 'the length' + size + 'BST takes insertion and deletion time' + profile_bst(lst))
        print('\n')
        profile_bst(lst)
