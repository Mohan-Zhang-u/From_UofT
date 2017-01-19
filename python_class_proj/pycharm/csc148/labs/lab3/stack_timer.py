class EmptyStackError(Exception):
    pass

class Stack:
    """Stack implementation.

    Stores data in a first-in, last-out order.
    When removing an item from the stack, the most recently-added
    item is the one that is removed.
    """
    # === Private Attributes ===
    # @type _items: list
    #     The items stored in the stack. The end of the list represents
    #     the top of the stack.

    def __init__(self):
        """Create a new empty stack.

        @type self: Stack
        @rtype: None
        """
        self._items = []

    def is_empty(self):
        """Return whether this stack contains no items.

        @type self: Stack
        @rtype: bool
        """
        return len(self._items) == 0

    def push(self, item):
        """Add a new element to the top of this stack.

        @type self: Stack
        @type item: object
        @rtype: None
        """
        self._items.append(item)

    def pop(self):
        """Remove and return the element at the top of this stack.

        Raise an EmptyStackError if the stack is empty.

        @type self: Stack
        @rtype: object
        """
        if self.is_empty():
            raise EmptyStackError()
        else:
            return self._items.pop()


class Stack2:
    """Stack implementation.

    Stores data in a first-in, last-out order.
    When removing an item from the stack, the most recently-added
    item is the one that is removed.
    """
    # === Private Attributes ===
    # @type _items: list
    #     The items stored in the stack. The top of the list represents
    #     the top of the stack.

    def __init__(self):
        """Create a new empty stack.

        @type self: Stack
        @rtype: None
        """
        self._items = []

    def is_empty(self):
        """Return whether this stack contains no items.

        @type self: Stack
        @rtype: bool
        """
        return len(self._items) == 0

    def push(self, item):
        """Add a new element to the top of this stack.

        @type self: Stack
        @type item: object
        @rtype: None
        """
        self._items.insert(0, item)

    def pop(self):
        """Remove and return the element at the top of this stack.

        Raise an EmptyStackError if the stack is empty.

        @type self: Stack
        @rtype: object
        """
        if self.is_empty():
            raise EmptyStackError()
        else:
            return self._items.pop(0)


if __name__ == '__main__':
    s1 = Stack()
    s2 = Stack2()

    from timer import Timer
    for i in [1000, 10000, 100000]:
        with Timer('Stack 1 push ' + str(i)):
            for j in range(i):
                s1.push(1)

        with Timer('Stack 1 pop ' + str(i)):
            for j in range(i):
                s1.pop()

    for i in [1000, 10000, 100000]:
        with Timer('Stack 2 push ' + str(i)):
            for j in range(i):
                s2.push(1)

        with Timer('Stack 2 pop ' + str(i)):
            for j in range(i):
                s2.pop()
