from controller import Tree
from sudoku_puzzle import SudokuPuzzle
t = Tree(('care',1))
t.insert(Tree(('dare', 2)),('care',1))
t.insert(Tree(('date', 3)),('dare', 2))
t.insert(Tree(('bare', 2)),('care',1))
t.insert(Tree(('cate', 4)),('date', 3))
t.insert(Tree(('cake', 5)),('cate', 4))
t.print_tree_indent()
print(t.undo((((('cake', 5))))))
print(t.undo((((('date', 3))))))
print(t.undo((((('dare', 2))))))
print((((((1, 3)))))==(1, 3))