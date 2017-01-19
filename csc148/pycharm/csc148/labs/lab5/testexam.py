__author__ = 'zhangmohan'
from rec_linked_list import LinkedListRec, insert_sorted
lst = LinkedListRec([1,2,3,4])
print(lst.is_empty())
insert_sorted(lst, 5)
print(lst)