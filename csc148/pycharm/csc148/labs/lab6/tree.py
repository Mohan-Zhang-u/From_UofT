# The following line of code imports the module random
import random


class Tree:
    """A recursive tree data structure.

    Note the relationship between this class and LinkedListRec
    from Lab 5; the only major difference is that self._rest
    has been replaced by self._subtrees to handle multiple
    recursive sub-parts.
    """
    # === Private Attributes ===
    # @type _root: object | None
    #     The item stored at the tree's root, or None if the tree is empty.
    # @type _subtrees: list[Tree]
    #     A list of all subtrees of the tree

    # === Representation Invariants ===
    # - If self._root is None then self._subtrees is empty.
    #   This setting of attributes represents an empty Tree.
    # - self._subtrees does not contain any empty Trees.

    def __init__(self, root):
        """Initialize a new Tree with the given root value.

        If <root> is None, the tree is empty.
        A new tree always has no subtrees.

        @type self: Tree
        @type root: object
        @rtype: None
        """
        self._root = root
        self._subtrees = []

    # ------------------------------------------------------------------------
    # Non-mutating methods
    # ------------------------------------------------------------------------

    def is_empty(self):
        """Return True if this tree is empty.

        @type self: Tree
        @rtype: bool
        """
        return self._root is None

    def add_subtrees(self, new_trees):
        """Add the trees in <new_trees> as subtrees of this tree.

        Raise ValueError if this tree is empty.

        @type self: Tree
        @type new_trees: list[Tree]
        @rtype: None
        """
        if self.is_empty():
            raise ValueError()
        else:
            self._subtrees.extend(new_trees)

    def __len__(self):
        """Return the number of nodes contained in this tree.

        @type self: Tree
        @rtype: int
        """
        if self.is_empty():
            return 0
        else:
            size = 1
            for subtree in self._subtrees:
                size += subtree.__len__()
            return size

    # You may find this method helpful for debugging.
    def print_tree(self):
        """Print all of the items in this tree.

        For each node, its item is printed before any of its
        descendants' items. The output is nicely indented.

        @type self: Tree
        @rtype: None
        """
        if not self.is_empty():
            # This prints the root item before all of the subtrees.
            print(self._root)
            for subtree in self._subtrees:
                subtree.print_tree()

                # Or alternately, simply call
                # self.print_tree_indent()

    def print_tree_indent(self, depth=0):
        """Print all of the items in this tree at a set indentation level.

        @type self: Tree
        @rtype: None
        """
        if not self.is_empty():
            print(depth * '  ' + str(self._root))
            for subtree in self._subtrees:
                subtree.print_tree_indent(depth + 1)

    # ------------------------------------------------------------------------
    # Mutating methods
    # ------------------------------------------------------------------------

    def delete_root(self):
        """Remove the root item of this tree.

        @type self: Tree
        @rtype: None
        """
        if len(self._subtrees) == 0:
            # Base case when empty or just one node
            self._root = None
        else:
            chosen_subtree = self._subtrees[0]
            self._root = chosen_subtree._root
            self._subtrees = (chosen_subtree._subtrees +
                              self._subtrees[1:])

    # We will cover this method on Friday.
    def delete_item(self, item):
        """Delete *one* occurrence of item from this tree.
        Return True if item was deleted, and False otherwise.

        @type self: Tree
        @type item: object
        @rtype: bool
        """
        if self.is_empty():
            return False
        else:
            if self._root == item:
                self.delete_root()
                return True
            else:
                for subtree in self._subtrees:
                    # Try to delete item from current subtree
                    # If it works, return!
                    if subtree.delete_item(item):
                        # If the subtree is now empty, remove it!
                        if subtree.is_empty():
                            self._subtrees.remove(subtree)
                        return True
                return False

    # ------------------------------------------------------------------------
    # Lab Exercises
    # ------------------------------------------------------------------------

    def __contains__(self, item):
        """Return whether <item> is in this tree.

        @type self: Tree
        @type item: object
        @rtype: bool

        >>> t = Tree(1)
        >>> t.add_subtrees([Tree(2), Tree(5)])
        >>> 1 in t  # Same as t.__contains__(1)
        True
        >>> 5 in t
        True
        >>> 4 in t
        False
        """
        # TODO
        if self.is_empty():
            return False
        elif self._root == item:
            return True
        else:
            for trees in self._subtrees:
                return self.__contains__(item)
        pass

    def leaves(self):
        """Return a list of all of the leaf items in the tree.

        @type self: Tree
        @rtype: list

        >>> Tree(None).leaves()
        []
        >>> t = Tree(1)
        >>> t.leaves()
        [1]
        >>> t.add_subtrees([Tree(2), Tree(5)])
        >>> t.leaves()
        [2, 5]
        >>> t = Tree(1)
        >>> lt = Tree(2)
        >>> lt.add_subtrees([Tree(4), Tree(5)])
        >>> rt = Tree(3)
        >>> rt.add_subtrees([Tree(6), Tree(7)])
        >>> t.add_subtrees([lt, rt])
        >>> t.leaves()
        [4, 5, 6, 7]
        """
        # TODO
        pass

    def branching_factor(self):
        """Return the average branching factor of this tree.

        Remember to ignore all 0's coming from leaves in
        this calculation.

        Return 0 if this tree is empty or consists of just
        a single root node.

        @type self: Tree
        @rtype: float

        >>> Tree(None).branching_factor()
        0.0
        >>> t = Tree(1)
        >>> t.branching_factor()
        0.0
        >>> t.add_subtrees([Tree(2), Tree(5)])
        >>> t.branching_factor()
        2.0
        >>> t = Tree(1)
        >>> lt = Tree(2)
        >>> lt.add_subtrees([Tree(4), Tree(5)])
        >>> rt = Tree(3)
        >>> rt.add_subtrees([Tree(6), Tree(7), Tree(8), Tree(9), Tree(10)])
        >>> t.add_subtrees([lt, rt])
        >>> t.branching_factor()
        3.0
        """
        # TODO
        pass

    def branching_factor_helper(self):
        """Return a tuple (x,y) where

        x is the total branching factor of all non-leaf nodes in this tree, and
        y is the total number of non-leaf nodes in this tree.

        @type self: Tree
        @rtype: (int, int)
        """
        # TODO
        pass

    def insert(self, item):
        """Insert <item> into this tree using the following algorithm.

            1. If the tree is empty, <item> is the new root of the tree.
            2. If the tree has a root but no subtrees, create a
               new tree containing the item, and make this new tree a subtree
               of the original tree.
            3. Otherwise, pick a random number between 1 and 3 inclusive.
                - If the random number is 3, create a new tree containing
                  the item, and make this new tree a subtree of the original.
                - If the random number is a 1 or 2, pick one of the existing
                  subtrees at random, and *recursively insert* the new item
                  into that subtree.

        @type self: Tree
        @type item: object
        @rtype: None

        >>> t = Tree(None)
        >>> t.insert(1)
        >>> 1 in t
        True
        >>> t = Tree(1)
        >>> lt = Tree(2)
        >>> lt.add_subtrees([Tree(4), Tree(5)])
        >>> rt = Tree(3)
        >>> rt.add_subtrees([Tree(6), Tree(7), Tree(8), Tree(9), Tree(10)])
        >>> t.add_subtrees([lt, rt])
        >>> t.insert(10)
        >>> 10 in t
        True
        """
        # Use the function randint as follows:
        # >>> random.randint(1, 3)
        # 2  # Randomly returns 1, 2, or 3
        # TODO
        pass

    def insert_child(self, item, parent):
        """Insert <item> into this tree as a child of <parent>.

        If successful, return True. If <parent> is not in the
        tree, return False.

        @type self: Tree
        @type item: object
        @type parent: object
        @rtype: bool
        """
        # TODO
        pass


def build_tree(source):
    """Return a Tree from the data in source.

    Assume that the data is hierarchical in nature with a single root,
    'Unidentified'. Assume the data is ordered such that a parent is only
    referenced after it is defined as a child, with the exception of the root.

    Note: The assumptions of ordering, and a predefined root are not necessary.
    Think of how you could make this function more generic (Hint: you will
    need to use an intermediate data structure).

    @type source: String
        The filename of a data file for the tree. The required format of
        the file is:
            child1,parent1
            ...
            child_n,parent_n
    @type root: object
        The value of the root of the tree
    @rtype: Tree
    """
    tree = Tree('Unidentified')
    with open(source, 'r') as fp:
        for line in fp:
            # Ignore lines that begin with # as comments
            if not line[0].startswith('#'):
                # Strip the new line character, and split on ','
                tokens = line.split(',')
                child = tokens[0].strip()
                parent = tokens[1].strip()
                tree.insert_child(child, parent)
    return tree
