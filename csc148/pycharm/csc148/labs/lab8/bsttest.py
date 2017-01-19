class BinarySearchTree:
    """Binary Search Tree class.

    This class represents a binary tree satisfying the Binary Search Tree
    property: for every node, its value is >= all items stored in its left
    subtree, and < all items stored in its right subtree.
    """

    # === Private Attributes ===
    # @type _root: object
    #     The item stored at the root of the tree, or None if the tree is empty.
    # @type _left: BinarySearchTree | None
    #     The left subtree, or None if the tree is empty
    # @type _right: BinarySearchTree | None
    #     The right subtree, or None if the tree is empty

    # === Representation Invariants ===
    #  - If _root is None, then so are _left and _right. This represents an empty BST.
    #  - If _root is not None, then _left and _right are BSTs.
    #  - All items in _left are <= _root, and all items in _right are >= _root.

    def __init__(self, root):
        """Initialize a new BST with the given root value.

        If <root> is None, the tree is empty, and the subtrees are None.
        If <root> is not None, the subtrees are empty.

        @type self: BinarySearchTree
        @type root: object
            A value for the root of the BST. If None, the BST is empty.
        @rtype: None
        """
        if root is None:
            self._root = None
            self._left = None
            self._right = None
        else:
            self._root = root
            self._left = BinarySearchTree(None)
            self._right = BinarySearchTree(None)

    def is_empty(self):
        """Return True if self is empty.

        @type self: BinarySearchTree
        @rtype: bool

        >>> bst = BinarySearchTree(None)
        >>> bst.is_empty()
        True
        >>> bst = BinarySearchTree(10)
        >>> bst.is_empty()
        False
        """
        return self._root is None

    def print(self, depth=0):
        """Print all of the items in this BST,
        where the root is printed before all of its subtrees,
        and every value is indented to show its depth.

        @type self: BinarySearchTree
        @rtype: None
        """
        if not self.is_empty():
            print(depth * '  ' + str(self._root))
            self._left.print(depth + 1)
            self._right.print(depth + 1)

    def height(self):
        """Return the height of this BST.

        @type self: BinarySearchTree
        @rtype: int

        >>> BinarySearchTree(None).height()
        0
        >>> bst = BinarySearchTree(7)
        >>> bst.height()
        1
        >>> bst._left = BinarySearchTree(5)
        >>> bst.height()
        2
        >>> bst._right = BinarySearchTree(9)
        >>> bst.height()
        2
        """
        if self.is_empty():
            return 0
        else:
            return max(self._left.height(), self._right.height()) + 1

    def __contains__(self, item):
        """Return True if item is in this BST.

        @type self: BinarySearchTree
        @type item: object
        @rtype: bool

        >>> bst = BinarySearchTree(3)
        >>> bst._left = BinarySearchTree(2)
        >>> bst._right = BinarySearchTree(5)
        >>> 3 in bst
        True
        >>> 5 in bst
        True
        >>> 2 in bst
        True
        >>> 4 in bst
        False
        """
        if self.is_empty():
            return False
        elif item == self._root:
            return True
        elif item < self._root:
            return item in self._left
        else:
            return item in self._right

    # Mutating methods

    def delete_item(self, item):
        """Delete one occurrence of <item> from this BST.

        Do nothing if <item> is not in this BST.

        @type self: BinarySearchTree
        @type item: object
        @rtype: None
        """
        if self.is_empty():
            pass
        elif self._root == item:
            self.delete_root()
        elif self._root > item:
            self._left.delete_item(item)
        else:  # self._root < item
            self._right.delete_item(item)

    def delete_root(self):
        """Remove the root of this tree.

        Precondition: this tree is *non-empty*.

        @type self: BinarySearchTree
        @rtype: None
        """
        if self._left.is_empty() and self._right.is_empty():
            self._root = None
        elif self._left.is_empty():
            self._root = self._right.extract_min()
        else:
            self._root = self._left.extract_max()

    def extract_max(self):
        """Remove and return the maximum item stored in this tree.

        Precondition: this tree is *non-empty*.

        @type self: BinarySearchTree
        @rtype: object
        """
        if self._right.is_empty():
            temp = self._root
            # Copy left subtree to self, because root node is removed.
            # Note that self = self._left does NOT work!
            self._root = self._left._root
            self._right = self._left._right
            self._left = self._left._left
            return temp
        else:
            return self._right.extract_max()

    def extract_min(self):
        """Remove and return the minimum item stored in this tree.

        Precondition: this tree is *non-empty*.

        @type self: BinarySearchTree
        @rtype: object
        """
        if self._left.is_empty():
            temp = self._root
            self._root = self._right._root
            self._left = self._right._left
            self._right = self._right._right
            return temp
        else:
            return self._left.extract_min()

    def insert(self, item):
        """Insert <item> into this BST, maintaining the BST property.

        Do not change positions of any other nodes.

        @type self: BinarySearchTree
        @type item: object
        @rtype: None

        >>> bst = BinarySearchTree(10)
        >>> bst.insert(3)
        >>> bst.insert(20)
        >>> bst._root
        10
        >>> bst._left._root
        3
        >>> bst._right._root
        20
        """
        if self.is_empty():
            # Make new leaf node.
            # Note that self._left and self._right cannot be None if the
            # tree is non-empty! (This is one of our invariants.)
            self._root = item
            self._left = BinarySearchTree(None)
            self._right = BinarySearchTree(None)
        elif item <= self._root:
            self._left.insert(item)
        else:
            self._right.insert(item)

    def to_dict(self):
        """Return the nested dictionary representation of this BST. The
        dictionary has two attributes:
            - value: the item stored at the root of the tree.
            - children: a list of dictionaries of the same form, one
            for each child.

        If the tree is empty, return an empty dictionary.

        @rtype: dict

        >>> bst = BinarySearchTree(None)
        >>> bst.to_dict()
        {}
        >>> bst.insert(10)
        >>> bst.to_dict()
        {'value': 10, 'children': []}
        >>> bst.insert(7)
        >>> bst.insert(13)
        >>> bst_dict = bst.to_dict()
        >>> bst_dict['value']
        10
        >>> bst_dict['children']
        [{'value': 7, 'children': []}, {'value': 13, 'children': []}]
        """
        # TODO
        dic = {}
        if self.is_empty():
            return {}
        elif self._left.is_empty() and self._right.is_empty():
            return {'value': self._root, 'children':[]}
        elif self._left.is_empty() and not self._right.is_empty():
            return {'value': self._root, 'children': [self._right.to_dict()]}
        elif not self._left.is_empty() and self._right.is_empty():
            return {'value': self._root, 'children': [self._left.to_dict()]}
        elif not self._left.is_empty() and not self._right.is_empty():
            return {'value': self._root, 'children': [self._left.to_dict(), self._right.to_dict()]}
        pass