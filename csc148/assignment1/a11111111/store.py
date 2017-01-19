# Modified!!! Haven't finished
"""Assignment 1 - Grocery Store Models (Task 1)

This file should contain all of the classes necessary to model the entities
in a grocery store.
"""
# This module is used to read in the data from a json configuration file.
import json


class BeyondCountCapacity(Exception):
    pass


class EmptyQueueError(Exception):
    pass


class Queue:
    """Queue implementation.

    Stores data in a first-in, first-out order.
    When removing an item from the queue, the one which was added first
    is removed.
    """
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

    def is_empty(self):
        """Return whether this queue is empty.

        @type self: Queue
        @rtype: bool
        """
        return len(self._queue) == 0

    def dequeue(self):
        """Remove and return the item at the front of this queue.

        TODO: return None if the queue is empty.

        @type self: Queue
        @rtype: object
        """
        if self.is_empty():
            pass
        else:
            return self._queue.pop(0)

    def qlen(self):
        """
        Return the length of the Queue
        @rtype: int
        """
        return len(self._queue)

    def returnfirst(self):
        """
        Return the first thing in the queue.
        @rtype: object
        """
        return self._queue[0]

    def returnsecond(self):
        return self._queue[1]

    def pop(self):
        """
        Remove and return the item at the back of this queue.
        @rtype: item
        """
        return self._queue.pop()


class Count:
    """Counts in the GroceryStore.
    """
    def __init__(self, count_type, count_capacity):
        """Initialize a Count according to the type.

        @precondition : count_type == 'cashier_count', 'express_count' or 'self_serve_count'
        @param count_type: 'cashier_count', 'express_count' or 'self_serve_count'
        @param count_capacity: int
        @rtype: None
        """
        self.costumer_waiting_list = Queue()
        # param self.costumer_waiting_list: Queue
        self.count_type = count_type
        self.count_capacity = count_capacity

    def add_customer(self, costumer):
        """
        Add a new customer to the private list self._List_of_customers
        @type costumer: Costumer
        @rtype: None
        """
        if self.costumer_waiting_list.qlen() >= self.count_capacity:
            raise BeyondCountCapacity
        else:
            self.costumer_waiting_list.enqueue(costumer)
            return None

    def qlen(self):
        """
        Return the number of present costumer.
        """
        return self.costumer_waiting_list.qlen()


class Costumer:
    """
    The costumers initially stored in the Counts' costumer waiting lists.
    """
    def __init__(self, join_in_timestamp, name, items):
        """

        @type join_in_timestamp: int
        @type name: str
        @type items: int
        """
        self.join_in_timestamp = join_in_timestamp
        self.name = name
        self.items = items


class GroceryStore:
    """A grocery store.

    A grocery store should contain customers and checkout lines.

    TODO: make sure you update the documentation for this class to include
    a list of all public and private attributes, in the style found in
    the Class Design Recipe.
    """
    def __init__(self, filename):
        """Initialize a GroceryStore from a configuration file <filename>.

        @type filename: str
            The name of the file containing the configuration for the
            grocery store.
        @rtype: None
        """
        self.count_line = []

        # a private list storing the Counts.

        with open(filename, 'r') as file:
            config = json.load(file)

        # <config> is now a dictionary with the keys 'cashier_count',
        # 'express_count', 'self_serve_count', and 'line_capacity'.

        self._cashier_count_num = config['cashier_count']
        self._express_count_num = config['express_count']
        self._self_serve_count_num = config['self_serve_count']
        self._line_capacity = config['line_capacity']
        # above are private attributes that used to decide which line should the costumer goes into.
        for i in range(self._cashier_count_num + self._express_count_num + self._self_serve_count_num):
            if i < self._cashier_count_num:
                self.count_line.append(Count('cashier_count', self._line_capacity))
            elif i < self._cashier_count_num + self._express_count_num:
                self.count_line.append(Count('express_count', self._line_capacity))
            elif i < self._cashier_count_num + self._express_count_num + self._self_serve_count_num:
                self.count_line.append(Count('self_serve_count', self._line_capacity))

    def find_the_priority_line(self, item_num):
        copy = []
        for i in self.count_line:
            if i.count_capacity == 0:
                copy.append([i.qlen() + 1000, i])
            # We add the current number of customers and the 'Count' class.
            # Give the line very huge number if its capacity is 0 so it will be in the end of list when we sort.
        if item_num < 8:
            copy = []
            # Copy is a list of lists.
            for i in range(len(self.count_line)):
                if self.count_line[i].count_capacity == 0:
                    # self.count_line[i] is a 'Count' class.
                    copy.append([self.count_line[i].qlen() + 1000, i])
                else:
                    copy.append([self.count_line[i].qlen(), i])
                    # We add the current number of customers and the 'Count' class.
            copy.sort()
            return copy[0][1]
        else:
            copy = []
            # Copy is a list of lists.
            for i in range(len(self.count_line)):
                if self.count_line[i].count_capacity == 0 or self.count_line[i].count_type == 'express_count':
                    # self.count_line[i] is a 'Count' class.
                    copy.append([self.count_line[i].qlen() + 1000, i])
                    # Give the line very huge number if its capacity is 0 so it will be in the end of list when we sort.
                else:
                    copy.append([self.count_line[i].qlen(), i])
                    # We add the current number of customers and the 'Count' class.
            copy.sort()
            return copy[0][1]

    def count_close(self, line_num):
        """
        close a count
        @type line_num: int
        @rtype: None
        """
        self.count_line.pop(line_num)
        self.count_line.insert(line_num,Count('cashier_count', 0))
        # close the line.

    def add_costumer_to_count(self, costumer, count_num):
        """
        add costumer to count.
        @param costumer: Costumer
        @type count_num: int
        @rtype: None
        """
        self.count_line[count_num].add_customer(costumer)

# You can run a basic test here using the default 'config.json'
# file we provided.
if __name__ == '__main__':
    store = GroceryStore('config.json')
    print(store._cashier_count_num)
    print(store._express_count_num)
    print(store._self_serve_count_num)
    for i in store.count_line:
        print(i)
        print(i.count_type)

    # Execute some methods here
