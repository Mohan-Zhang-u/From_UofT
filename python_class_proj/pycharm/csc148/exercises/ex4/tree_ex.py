# Exercise 4 - More Tree Practice
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""Exercise 4: More Tree Practice.
"""


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
    # Exercise 4, Task 1
    # ------------------------------------------------------------------------
    def __eq__(self, other):
        """Return whether <self> and <other> are equal.

        @type self: Tree
        @type other: Tree
        @rtype: bool
        >>> a = Tree(1)
        >>> b = Tree(1)
        >>> a == b
        True
        >>> c = Tree(2)
        >>> a == c
        False
        >>> t = Tree(1)
        >>> lt = Tree(2)
        >>> lt.add_subtrees([Tree(4), Tree(5)])
        >>> rt = Tree(3)
        >>> rt.add_subtrees([Tree(6), Tree(7), Tree(8), Tree(9), Tree(10)])
        >>> t.add_subtrees([lt, rt])
        >>> lt == rt
        False
        >>> t2 = Tree(1)
        >>> lt2 = Tree(2)
        >>> lt2.add_subtrees([Tree(4), Tree(5)])
        >>> rt2 = Tree(3)
        >>> rt2.add_subtrees([Tree(6), Tree(7), Tree(8), Tree(9)])
        >>> t2.add_subtrees([lt2, rt2])
        >>> t == t2
        False
        """
        if self.is_empty():
            if other.is_empty():
                return True
            else:
                return False
        elif self._subtrees == []:
            if other._subtrees == [] and self._root == other._root:
                return True
            else:
                return False
        else:
            if len(self._subtrees) != len(other._subtrees):
                return False
            else:
                i = 0
                for trees in self._subtrees:
                    if trees != other._subtrees[i]:
                        return False
                    i = i + 1
                return True

        pass

    # ------------------------------------------------------------------------
    # Exercise 4, Task 2
    # ------------------------------------------------------------------------
    def to_nested_list(self):
        """Return the nested list representation of this tree.

        @type self: Tree
        @rtype: list
        >>> t = Tree(1)
        >>> lt = Tree(2)
        >>> lt.add_subtrees([Tree(4), Tree(5)])
        >>> rt = Tree(3)
        >>> rt.add_subtrees([lt, Tree(6), Tree(7), Tree(8), Tree(9), Tree(10)])
        >>> t.add_subtrees([lt, rt])
        >>> t.to_nested_list()
        [1, [2, [4], [5]], [3, [2, [4], [5]], [6], [7], [8], [9], [10]]]
        """
        nested_list = []
        if self.is_empty():
            return nested_list
        elif self._subtrees == []:
            nested_list.append(self._root)
            return nested_list
        else:
            nested_list.append(self._root)
            for trees in self._subtrees:
                nested_list.append(trees.to_nested_list())
            return nested_list
        pass


def to_tree(obj):
    """Return the Tree which <obj> represents.

    Precondition: <obj> is a valid nested list representation of a tree.

    You may not access Tree attributes directly. This function can be
    implemented only using the Tree constructor and add_subtrees methods.

    @type obj: list
    @rtype: Tree
    >>> lists = [1, [2, [4], [5]], [3, [2, [4], [5]], [6], [7], [8], [9], [10]]]
    >>> a = to_tree(lists)
    >>> a.print_tree_indent()
    1
      2
        4
        5
      3
        2
          4
          5
        6
        7
        8
        9
        10
    """
    if obj == []:
        return Tree(None)
    elif len(obj) == 1:
        return Tree(obj[0])
    else:
        returned_tree = Tree(obj[0])
        for objs in obj[1:]:
            returned_tree.add_subtrees([to_tree(objs)])
        return returned_tree
