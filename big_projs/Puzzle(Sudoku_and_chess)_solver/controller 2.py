# Assignment 2 - Puzzle Game
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""Module containing the Controller class."""
from view import TextView, WebView
from puzzle import Puzzle
from solver import solve, solve_complete


class Tree:
    def __init__(self, root, command, command2):
        """
        @param root: root is Controller
        @type root: Puzzle | ValueError
        @return:
        @rtype: None
        """
        self.root = root
        self.command = command
        self.accumulatecommand = command2
        self.subtree = []

    def is_empty(self):
        return self.root is None

    def __contains__(self, item):
        """Helper method for find_parent.
        @type item: Puzzle
        @rtype: bool
        """
        if self.is_empty():
            return False
        elif self.root == item:
            return True
        else:
            for subtrees in self.subtree:
                return item in subtrees
    def print_tree(self):
        """Print all of the items in this tree.

        For each node, its item is printed before any of its
        descendants' items. The output is nicely indented.

        @type self: Tree
        @rtype: None
        """
        if not self.is_empty():
            # This prints the root item before all of the subtrees.
            print(self.root)
            for subtree in self.subtree:
                subtree.print_tree()

                # Or alternately, simply call
                # self.print_tree_indent()

    def print_tree_indent(self, depth=0):
        """Print all of the items in this tree at a set indentation level.

        @type self: Tree
        @rtype: None
        """
        if not self.is_empty():
            print(depth * '  ' + str(self.root))
            for subtree in self.subtree:
                subtree.print_tree_indent(depth + 1)

    def insert(self, newtree, root, accumulatecommand):
        """Insert the newtree to the current subtree list
        @type newtree: Tree
        @type root: Puzzle | ValueError
        @rtype: None
        """
        p = 0
        if self.is_empty():
            raise ValueError
        elif str(self.root) == str(root) and self.accumulatecommand == accumulatecommand:
            for trees in self.subtree:
                if str(trees.root) == str(newtree.root):
                    p = True
            if not p:
                self.subtree.append(newtree)
        else:
            for trees in self.subtree:
                trees.insert(newtree, root, accumulatecommand)

    def find_parent(self, root, accumand):
        """Corresponding to the undo in controller.
        @type root: Puzzle | ValueError
        @return: parents' Tree
        @rtype: Puzzle
        """
        if self.is_empty():
            return False
        elif self.root == root:
            raise ValueError
        elif self.subtree == []:
            return False
        else:
            for trees in self.subtree:
                if trees.accumulatecommand == accumand:
                    return self.root, self.command
                else:
                    if trees.find_parent(root, accumand) is not False:
                        return trees.find_parent(root, accumand)
        return False

    def subtrees_find(self, root, accumand):
        """Find the root of tree's subtree

        @param root:
        @type root:
        @param accumand:
        @type accumand:
        @return:
        @rtype:
        """
        k = []
        if self.is_empty():
            return False
        elif self.subtree == []:
            return False
        elif self.root == root and self.accumulatecommand == accumand:
            for trees in self.subtree:
                k.append(str(trees.root))
            return k
        else:
            for trees in self.subtree:
                if trees.subtrees_find(root, accumand) is not False:
                    return trees.subtrees_find(root, accumand)
        return False




class Controller:
    """Class responsible for connection between puzzles and views.

    You may add new *private* attributes to this class to help you
    in your implementation.
    """
    # === Private Attributes ===
    # @type _puzzle: Puzzle
    #     The puzzle associated with this game controller
    # @type _view: View
    #     The view associated with this game controller

    def __init__(self, puzzle, mode='text'):
        """Create a new controller.

        <mode> is either 'text' or 'web', representing the type of view
        to use.

        By default, <mode> has a value of 'text'.

        @type puzzle: Puzzle
        @param command: The command that can achieve this status from previous states. If there is no previous command, then the command is ''
        @type command: str
        @type mode: str
        @rtype: None
        """
        self._puzzle = puzzle
        self.tree = Tree(puzzle, '', '')
        self.accumulate_command = ''
        self.current_command = ''
        if mode == 'text':
            self._view = TextView(self)
        elif mode == 'web':
            self._view = WebView(self)
        else:
            raise ValueError()

        # Start the game.
        self._view.run()

    def state(self):
        """Return a string representation of the current puzzle state.

        @type self: Controller
        @rtype: str
        """
        return str(self._puzzle)

    def act(self, action):
        """Run an action represented by string <action>.

        Return a string representing either the new state or an error message,
        and whether the program should end.

        @type self: Controller
        @type action: str
        @rtype: (str, bool)

        """
        if action == 'SOLVE':
            solution = solve(self._puzzle)
            return (print(solution), True)
        elif action == 'SOLVE-ALL':
            a = ''
            solution2 = solve_complete(self._puzzle)
            for sol in solution2:
                b = str(sol)
                a = a + b + '\n'
            return (a, True)
        elif '>' in action:
            try:
                a = self._puzzle
                self._puzzle = self._puzzle.move(action)
                b = self.accumulate_command
                self.current_command = action
                self.accumulate_command += action
                self.tree.insert(Tree(self._puzzle, action, self.accumulate_command), a, b)
                return (self.state(), False)
            except ValueError:
                # self.tree.insert(Tree(ValueError, action), self._puzzle)
                return ('The input is invalid', False)
        elif action == 'exit':
            return ('', True)
        elif action == 'undo':
            # self._puzzle would never change whenever you get ValueError
            # That's why you get Error when you do self._puzzle = self.tree.find_parent(self._puzzle)
            # 1 -> ValueError(but self._puzzle is still in 1)
            # find_parent(1) would raise Error or skip one step whenever you get the
            try:
                b = self.current_command
                self._puzzle, self.current_command = self.tree.find_parent(self._puzzle, self.accumulate_command)
                self.accumulate_command = ''.join(self.accumulate_command.rsplit(b))
                return (self.state(), False)
            except ValueError:
                return ('There is no more previous step', False)
        elif action == 'attempt':
            s = ''
            if self.tree.subtrees_find(self._puzzle, self.accumulate_command) is not False:
                t = self.tree.subtrees_find(self._puzzle, self.accumulate_command)
                for i in t:
                    s += i
                return (s, False)
            else:
                return ('There is no following step', False)
        else:
            return (self.state(), False)


if __name__ == '__main__':
    from sudoku_puzzle import SudokuPuzzle

    s = SudokuPuzzle([['', '', '', ''],
                      ['', '', '', ''],
                      ['C', 'D', 'A', 'B'],
                      ['A', 'B', 'C', 'D']])
    c = Controller(s)
