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
            pass#raise EmptyQueueError
        else:
            return self._queue.pop(0)

    def qlen(self):
        """
        return the length of the Queue
        :return:int
        """
        return len(self._queue)

    def returnfirst(self):
        """
        :return the first thing in the queue.
        :return:items
        """
        return self._queue[0]

    def pop(self):
        """
        Remove and return the item at the back of this queue.
        :return:item
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
        @return:None
        """
        self.costumer_waiting_list = Queue()
        # param self.costumer_waiting_list: Queue
        self.count_type = count_type
        self.count_capacity = count_capacity

    def add_customer(self, costumer):
        """
        Add a new customer to the private list self._List_of_customers
        @:param costumer: Costumer
        @return: None
        """
        if self.costumer_waiting_list.qlen() >= self.count_capacity:
            raise BeyondCountCapacity
        else:
            self.costumer_waiting_list.enqueue(costumer)
            return None

    def qlen(self):
        """
        :return:the number of present costumer.
        """
        return self.costumer_waiting_list.qlen()


class Costumer:
    """
    The costumers initially stored in the Counts' costumer waiting lists.
    """
    def __init__(self, join_in_timestamp, name, items):
        """

        @:param join_in_timestamp: int
        @:param name: str
        @:param items: int
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
        """
        According to the item number of the costumer, find out what line should the costumer goes into.
        @precondition:there is always at least one open line that has space for the customer.
        @:param item_num: int
        :return: int (line number)
        """
        min_of_cashier_count = 0
        min_of_express_count = 0 + self._cashier_count_num
        min_of_self_serve_count = 0 + self._cashier_count_num + self._express_count_num

        # the three integers above store the three types of lines with minimum waiting costumer.
        for i in range(len(self.count_line)):
            if i+1 < self._cashier_count_num:
                if self.count_line[i].qlen() > self.count_line[i+1].qlen():
                    min_of_cashier_count = i + 1
            elif i+1 < self._express_count_num:
                if self.count_line[i].qlen() > self.count_line[i+1].qlen():
                    min_of_express_count = i + 1
            elif i+1 < self._self_serve_count_num:
                if self.count_line[i].qlen() > self.count_line[i+1].qlen():
                    min_of_self_serve_count = i + 1
        min_costumers_of_cashier_count = self.count_line[min_of_cashier_count].qlen()
        min_costumers_of_express_count = self.count_line[min_of_express_count].qlen()
        min_costumers_of_self_serve_count = self.count_line[min_of_self_serve_count].qlen()
        return_num = 0
        # the number that will finally return.
        if item_num < 8:
            a = sorted([min_costumers_of_cashier_count, min_costumers_of_express_count, min_costumers_of_self_serve_count])
            for i in range(len(self.count_line)):
                if a[0] == self.count_line[i].qlen():
                    return i
        else:
            a = sorted([min_costumers_of_cashier_count, min_costumers_of_self_serve_count])
            for i in range(self._cashier_count_num):
                if a[0] == self.count_line[i].qlen():
                    return i
            for i in range(self._cashier_count_num + self._express_count_num, len(self.count_line)):
                if a[0] == self.count_line[i].qlen():
                    return i
        # find the priority is done.



    def count_close(self, line_num):
        """
        close a count
        :param line_num:
        :return:None
        """
        closed_line = self.count_line[line_num]
        if closed_line.count_type == 'cashier_count':
            self._cashier_count_num = self._cashier_count_num - 1
        elif closed_line.count_type == 'express_count':
            self._express_count_num = self._express_count_num - 1
        elif closed_line.count_type == 'self_serve_count':
            self._self_serve_count_num = self._self_serve_count_num - 1
        #let the number of the lines change.
        self.count_line.pop(line_num)
        #close the line.


    def add_costumer_to_count(self, costumer, count_num):
        """
        add costumer to count.
        :param costumer: Costumer
        :param count_num: int
        :return:None
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
