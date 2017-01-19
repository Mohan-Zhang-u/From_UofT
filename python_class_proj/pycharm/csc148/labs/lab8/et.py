class ExpressionTree:
    """A Binary Tree that represents arithmetic expressions on integers.

    An ExpressionTree's internal nodes are one of {'+', '-', '*'}, and
    its leaves are integers.

    The tree corresponds to computations in the natural way: the function
    at the root of the tree is “called” with each of the subtrees as its arguments
    """

    # === Private Attributes ===
    # @type _root: object
    #     The item stored at the root of the tree, or None if the tree is empty.
    # @type _left: ExpressionTree | None
    #     The left subtree, or None if the tree is empty
    # @type _right: ExpressionTree | None
    #     The right subtree, or None if the tree is empty

    # === Representation Invariants ===
    #  - If _root is None then so are _left and _right.
    #  - If _root is a value in {'+', '-', '*'} then it has non-empty
    #    _left and _right subtrees.
    #  - Otherwise _root contains an integer.

    def __init__(self, prefix_exp_list):
        """Initialize a new ET with the given expression.

        @type self: ExpressionTree
        @type prefix_exp_list: list
            An expression represented as a list in prefix notation. Some
            examples:
                - 5 + 6 -> ['+', 5, 6]
                - 5 + 6 - 8 -> ['-', ['+', 5, 6], 8]
        @rtype: None
        """
        self._root = prefix_exp_list[0]
        self._left = None
        self._right = None

        if len(prefix_exp_list) > 1:
            self._left = ExpressionTree(prefix_exp_list[1])
            self._right = ExpressionTree(prefix_exp_list[2])

    def print(self, depth=0):
        """Print all of the items in this ET,
        where the root is printed before all of its subtrees,
        and every value is indented to show its depth.

        @type self: ExpressionTree
        @rtype: None
        """
        print(depth * '  ' + str(self._root))
        self._left.print(depth + 1)
        self._right.print(depth + 1)

    def height(self):
        """Return the height of this ET.

        @type self: BinaryTree
        @rtype: int
        """
        return max(self._left.height(), self._right.height()) + 1

    def is_leaf(self):
        """Return True if self is a leaf.

        @type self: BinaryTree
        @rtype: bool
        """
        # TODO
        pass

    def evaluate(self):
        """Evaluate the expression.

        If self is a leaf, return self._root. Otherwise, evaluate self._left and
        self._right and combine them according to self._root.

        @type self: ExpressionTree
        @rtype: int
        """
        # TODO
        pass
