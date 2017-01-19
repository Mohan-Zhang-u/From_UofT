# Exercise 2 - More Stack Exercises
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
from stack import Stack


class SmallStackError(Exception):
    pass


def reverse_top_two(stack):
    """Reverse the top two elements on <stack>.

    Raise a SmallStackError if the stack has fewer than two items.

    @type stack: Stack
    @rtype: None

    >>> stack = Stack()
    >>> stack.push(1)
    >>> stack.push(2)
    >>> reverse_top_two(stack)
    >>> stack.pop()
    1
    >>> stack.pop()
    2
    >>> stack.push(1)
    >>> reverse_top_two(stack)
    Traceback (most recent call last):
      ...
    stack_ex.SmallStackError
    """
    a = []
    # store the poped out number.
    if stack.is_empty():
        raise SmallStackError
    else:
        a.append(stack.pop())
    if stack.is_empty():
        stack.push(a[0])
        raise SmallStackError
    else:
        a.append(stack.pop())
        stack.push(a[0])
        stack.push(a[1])
    return None


def reverse(stack):
    """Reverse all the elements of <stack>.

    Do nothing if the stack is empty.

    @type stack: Stack
    @rtype: None

    >>> stack = Stack()
    >>> stack.push(1)
    >>> stack.push(2)
    >>> stack.push(3)
    >>> reverse(stack)
    >>> stack.pop()
    1
    >>> stack.pop()
    2
    >>> stack.pop()
    3
    >>> stack.pop()
    Traceback (most recent call last):
      ...
    stack.EmptyStackError
     >>> reverse(stack)

    """
    a = Stack()
    # create a stack store that we gonna use in this reverse function
    b = Stack()
    # create another stack store that we gonna use in this reverse function
    while not stack.is_empty():
        a.push(stack.pop())
    while not a.is_empty():
        b.push(a.pop())
    while not b.is_empty():
        stack.push(b.pop())
