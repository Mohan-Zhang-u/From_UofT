def nested_max(obj):
    """Return the maximum item stored in <obj>.

    You may assume all the items are positive, and calling
    nested_max on an empty list returns 0.

    @type obj: int | list
    @rtype: int

    >>> nested_max(17)
    17
    >>> nested_max([1, 2, [1, 2, [3], 4, 5], 4])
    5
    >>> nested_max([4, 99, [12, 2, [11], 4, 5], 1])
    99
    """
    if isinstance(obj, int):
        return obj
    else:
        a = 0
        for i in obj:
            b = nested_max(i)
            if a < b:
                a = b
        return a

def length(obj):
    """Return the length of <obj>.

    The *length* of a nested list is defined as:
    1. 0, if <obj> is a number.
    2. The maximum of len(obj) and the lengths of the nested lists contained
       in <obj>, if <obj> is a list.

    @type obj: int | list
    @rtype: int

    >>> length(17)
    0
    >>> length([1, 2, [1, 2], 4])
    4
    >>> length([1, 2, [1, 2, [3], 4, 5], 4])
    5
    """
    if isinstance(obj, int):
        return 0
    else:
        a = len(obj)
        b = 0
        for i in obj:
            c = length(i)
            if b < c:
                b = c
        if a > b:
            return a
        else:
            return b

def add_all(lst):
    """

    @param obj:
    @return:

    >>> add_all(3)
    3
    >>> add_all([3, [1, 2]])
    6
    >>> add_all([1, 2, [1, 2], 4])
    10
    """

    if isinstance(lst, int):
        return lst
    else:
        s = 0
        for i in lst:
            s = s + add_all(i)
        return s


def equal(obj1, obj2):
    """Return whether two nested lists are equal, i.e., have the same value.

    Note: order matters.

    @type obj1: int | list
    @type obj2: int | list
    @rtype: bool

    >>> equal(17, [1, 2, 3])
    False
    >>> equal([1, 2, [1, 2], 4], [1, 2, [1, 2], 4])
    True
    >>> equal([1, 2, [1, 2], 4], [4, 2, [2, 1], 3])
    False
    """
    if isinstance(obj1, int) or isinstance(obj2, int):
        return obj1 == obj2
    else:
        if len(obj1) != len(obj2):
            return False
        else:
            for i in range(len(obj1)):
                if equal(obj1[i], obj2[i]) is False:
                    return False
            return True

