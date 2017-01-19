class LinkedListRec:
    """A recursive linked list implementation of the List ADT.

    Note the structural differences between this implementation
    and the node-based implementation from last week. Even though
    both classes have the same public interface, how they
    implement their methods are quite different!

    There is no "_Node" class with this implementation.
    """
    # === Private Attributes ===
    # @type _first: object | None
    # @type _rest: LinkedListRec | None
    #     A list containing the other items after the first one.
    #
    # === Representation Invariants ===
    # - _first is None if and only if _rest is None. This situation
    #   represents an empty list.

    def __init__(self, items):
        """Initialize a new linked list containing the given items.

        The first node in the linked list contains the first item
        in <items>.

        @type self: LinkedListRec
        @type items: list
        @rtype: None
        """
        if len(items) == 0:
            self._first = None
            self._rest = None
        else:
            self._first = items[0]
            self._rest = LinkedListRec(items[1:])

    def is_empty(self):
        """Return whether this linked list is empty.

        @type self: LinkedListRec
        @rtype: bool
        """
        return self._first is None

    def __str__(self):
        """Return a string representation of this list..

        @type self: LinkedListRec
        @rtype: str

        >>> lst = LinkedListRec([1, 2, 3])
        >>> str(lst) # Equivalent to lst.__str__()
        '1 -> 2 -> 3'
        """
        if self.is_empty():
            return ''
        elif self._rest.is_empty():
            return str(self._first)
        else:
            return str(self._first) + ' -> ' + str(self._rest)

    def __len__(self):
        """Return the number of elements in this list.

        @type self: LinkedListRec
        @rtype: int

        >>> lst = LinkedListRec([])
        >>> len(lst) # Equivalent to lst.__len__()
        0
        >>> lst = LinkedListRec([1, 2, 3])
        >>> len(lst)
        3
        """
        # TODO: complete this function!
        if self._first is None:
            return 0
        elif self._rest is None:
            return 1
        elif self._rest is not None:
            a = 1
            a = a + len(self._rest)
        return a

    def __getitem__(self, index):
        """Return the item at position <index> in this list.

        Raise IndexError if <index> is >= the length of this list.

        @type self: LinkedListRec
        @type index: int
        @rtype: object

        >>> lst = LinkedListRec([1, 2, 3])
        >>> lst[0] # Equivalent to lst.__getitem__(0)
        1
        >>> lst[1]
        2
        >>> lst[2]
        3
        >>> lst[3]
        Traceback (most recent call last):
        ...
        IndexError
        """
        if self.is_empty():
            raise IndexError
        elif index == 0:
            return self._first
        else:
            return self._rest.__getitem__(index - 1)
            # Equivalently, return self._rest[index - 1]

    def __setitem__(self, index, item):
        """Store item at position <index> in this list.

        Raise IndexError if index is >= the length of <self>.

        @type self: LinkedListRec
        @type index: int
        @type item: object
        @rtype: None

        >>> lst = LinkedListRec([1, 2, 3])
        >>> lst[0] = 100 # Equivalent to lst.__setitem__(0, 100)
        >>> lst[1] = 200
        >>> lst[2] = 300
        >>> lst[3] = 400
        Traceback (most recent call last):
        ...
        IndexError
        >>> str(lst)
        '100 -> 200 -> 300'
        """
        # TODO: complete this function!
        if self.is_empty():
            raise IndexError
        elif index == 0:
            self._first = item
        else:
            self._rest[index - 1] = item

    def __contains__(self, item):
        """Return whether <item> is in this list.

        Use == to compare items.

        @type self: LinkedListRec
        @type item: object
        @rtype: bool

        >>> lst = LinkedListRec([1, 2, 3])
        >>> 2 in lst # Equivalent to lst.__contains__(2)
        True
        >>> 4 in lst
        False
        """
        if self.is_empty():
            return False
        elif self._first == item:
            return True
        else:
            return self._rest.__contains__(item)
            # Equivalently, item in self._rest

    def count(self, item):
        """Return the number of times <item> occurs in this list.

        Use == to compare items.

        @type self: LinkedListRec
        @type item: object
        @rtype: int

        >>> lst = LinkedListRec([1])
        >>> lst.count(1)
        1
        >>> lst = LinkedListRec([2])
        >>> lst.count(1)
        0
        >>> lst1 = LinkedListRec([1, 2])
        >>> lst1.count(1)
        1
        >>> lst1 = LinkedListRec([1, 2, 1])
        >>> lst1.count(1)
        2
        >>> lst = LinkedListRec([1, 2, 1, 3, 2, 1])
        >>> lst.count(1)
        3
        >>> lst.count(2)
        2
        >>> lst.count(3)
        1
        """
        # TODO: complete this function!

        if self._first is None:
            return 0
        elif self._first != item and len(self._rest) == 0:
            return 0
        elif self._first == item and len(self._rest) == 0:
            return 1
        elif self._first == item and len(self._rest) != 0:
            return 1 + self._rest.count(item)
        elif self._first != item and len(self._rest) != 0:
            return 0 + self._rest.count(item)
