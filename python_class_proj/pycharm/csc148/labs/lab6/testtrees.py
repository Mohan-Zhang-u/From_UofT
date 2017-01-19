__author__ = 'zhangmohan'
from imcomplete_trees import Tree
s=Tree(1)
print(len(s))
s.add_subtrees([Tree(1), Tree(2)])
print(len(s))
s.print_tree()
print(11111)
s._subtrees[0].add_subtrees([Tree(8), Tree(11)])
s.add_subtrees([Tree(1),Tree(3)])
print(s.leaves())