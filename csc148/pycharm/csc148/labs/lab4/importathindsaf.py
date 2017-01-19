__author__ = 'zhangmohan'
from testtesttest import *
self = LinkedList([1, 2, 3])
other = LinkedList([1, 2, 3])
curr = self._first
curr_other = other._first
while curr is not None and curr_other is not None:
    print(curr.item)
    print(curr_other.item)
    if curr.item != curr_other.item:
        print(False)
    curr = curr.next
    curr_other = curr_other.next