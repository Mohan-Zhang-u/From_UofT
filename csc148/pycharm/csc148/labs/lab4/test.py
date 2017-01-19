__author__ = 'zhangmohan'
from linked_list import *
linky = LinkedList([1,2,3])
print(len(linky))
linky[0] = 100
linky[1] = 200
linky[2] = 2300
lst = LinkedList([1, 2, 3])
lst.delete_item(2)
print(lst)
lst.delete_item(2)
print(lst)
lst.delete_item(3)
lst.delete_item(1)
print(lst)
lst = LinkedList(['Hello', 'Goodbye'])
func = str.upper
print(lst.map(func))
class IndexPllError(Exception):
    pass