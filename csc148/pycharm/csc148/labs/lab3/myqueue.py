class Queue:
    """Queue implementation.

    Stores data in a first-in, first-out order.
    When removing an item from the queue, the one which was added first
    is removed.
    """
    # TODO: Add private attribute(s) here!
    def __init__(self):
        """Initialize a new empty queue.

        @type self: Queue
        @rtype: None
        """
        self._queue = []


    def enqueue(self, item):
        """Add <item> to the back of this queue.

        @type self: Queue
        @type item: object
        @rtype: None
        """
        self._queue.append(item)


    def dequeue(self):
        """Remove and return the item at the front of this queue.

        TODO: Return None if the queue is empty.

        @type self: Queue
        @rtype: object
        """
        if self.is_empty():
            return None
        else:
            return self._queue.pop(0)

    def is_empty(self):
        """Return whether this queue is empty.

        @type self: Queue
        @rtype: bool
        """
        return len(self._queue) == 0
    def Qlen(self):
        '''
        return the length of the Queue
        :return:int
        '''
        return len(self._queue)

class EmptyQueueError(Exception):
    pass


def product(integer_queue):
    """Remove all items in <integer_queue> and return their product.

    Precondition: <integer_queue> contains only integers.

    @type integer_queue: Queue
    @rtype: int
    """
    if integer_queue.is_empty():
        raise EmptyQueueError
    else:
        i = 1 # the iterator
        while not integer_queue.is_empty():
            i = i * integer_queue.dequeue()
        return i


def product_star(integer_queue):
    """Return the product of integers in <integer_queue>.

    Leave <integer_queue> unchanged.

    Precondition: <integer_queue> contains only integers.

    @type integer_queue: Queue
    @rtype: int
    """
    if integer_queue.is_empty():
        raise EmptyQueueError
    else:
        copy = Queue()
        # the copy of original integer_queue
        i = 1
        # the iterator
        d = 0
        #the dequeued number
        while not integer_queue.is_empty():
            d = integer_queue.dequeue()
            i = i * d
            copy.enqueue(d)
        while not copy.is_empty():
            integer_queue.enqueue(copy.dequeue())
        return i


if __name__ == '__main__':
    primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

    prime_line = Queue()
    for prime in primes:
        prime_line.enqueue(prime)

    assert 6469693230 == product_star(prime_line)
    assert not prime_line.is_empty()
    assert 6469693230 == product(prime_line)
    assert prime_line.is_empty()
