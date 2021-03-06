"""Assignment 1 - Grocery Store Events (Task 2)

This file should contain all of the classes necessary to model the different
kinds of events in the simulation.
"""
# Feel free to import classes and functions from
# *your other files*, but remember not to import any external libraries.
from store import GroceryStore, Costumer
from container import PriorityQueue


class Event:
    """An event.

    Events have an ordering based on the event timestamp in non-ascending
    order. Events with older timestamps are less than those with newer
    timestamps.

    This class is abstract; subclasses must implement do().

    You may, if you wish, change the API of this class to add
    extra public methods or attributes. Make sure that anything
    you add makes sense for ALL events, and not just a particular
    event type.

    Document any such changes carefully!

    === Attributes ===
    @type timestamp: int
        A timestamp for this event.
    """
    def __init__(self, timestamp):
        """Initialize an Event with a given timestamp.

        @type self: Event
        @type timestamp: int
            A timestamp for this event.
            Precondition: must be a non-negative integer.
        @rtype: None

        >>> Event(7).timestamp
        7
        """
        self.timestamp = timestamp

    # The following six 'magic methods' are overridden to allow for easy
    # comparison of Event instances. All comparisons simply perform the
    # same comparison on the 'timestamp' attribute of the two events.
    def __eq__(self, other):
        """Return whether this Event is equal to <other>.

        Two events are equal if they have the same timestamp.

        @type self: Event
        @type other: Event
        @rtype: bool

        >>> first = Event(1)
        >>> second = Event(2)
        >>> first == second
        False
        >>> second.timestamp = first.timestamp
        >>> first == second
        True
        """
        return self.timestamp == other.timestamp

    def __ne__(self, other):
        """Return True iff this Event is not equal to <other>.

        @type self: Event
        @type other: Event
        @rtype: bool

        >>> first = Event(1)
        >>> second = Event(2)
        >>> first != second
        True
        >>> second.timestamp = first.timestamp
        >>> first != second
        False
        """
        return not self.__eq__(other)

    def __lt__(self, other):
        """Return True iff this Event is less than <other>.

        @type self: Event
        @type other: Event
        @rtype: bool

        >>> first = Event(1)
        >>> second = Event(2)
        >>> first < second
        True
        >>> second < first
        False
        """
        return self.timestamp < other.timestamp

    def __le__(self, other):
        """Return True iff this Event is less than or equal to <other>.

        @type self: Event
        @type other: Event
        @rtype: bool

        >>> first = Event(1)
        >>> second = Event(2)
        >>> first <= first
        True
        >>> first <= second
        True
        >>> second <= first
        False
        """
        return self.timestamp <= other.timestamp

    def __gt__(self, other):
        """Return True iff this Event is greater than <other>.

        @type self: Event
        @type other: Event
        @rtype: bool

        >>> first = Event(1)
        >>> second = Event(2)
        >>> first > second
        False
        >>> second > first
        True
        """
        return not self.__le__(other)

    def __ge__(self, other):
        """Return True iff this Event is greater than or equal to <other>.

        @type self: Event
        @type other: Event
        @rtype: bool

        >>> first = Event(1)
        >>> second = Event(2)
        >>> first >= first
        True
        >>> first >= second
        False
        >>> second >= first
        True
        """
        return not self.__lt__(other)

    def do(self, store):
        """Perform this Event.

        Call methods on <store> to update its state according to the
        meaning of the event. Note: the "business logic" of what actually
        happens inside a grocery store should be handled in the GroceryStore
        class, not in any Event classes.

        Return a list of new events spawned by this event (making sure the
        timestamps are correct).

        @type self: Event
        @type store: GroceryStore
        @rtype: list[Event]
            A list of events generated by performing this event.
        """
        raise NotImplementedError
        # return must be[[item.timestamp, item],[item.timestamp, item]] ！！！！！


class Arrive(Event):
    """
    a costumer arrived at the counts
    """
    def __init__(self, timestamp, costumer):
        """
        :param timestamp: int
        :param costumer: Costumer
        :return:
        """
        self.timestamp = timestamp
        self.costumer = costumer

    def do(self, store):
        """
        if the line which the costumer joins is empty, spawn(return) a BeginCheck, else return None.
        """
        line_num = store.find_the_priority_line(self.costumer.items)
        # the priority line number.

        if store.count_line[line_num].costumer_waiting_list.is_empty():
            store.add_costumer_to_count(self.costumer, line_num)
            spawned_event = BeginCheck(self.timestamp, line_num)
            return [[self.timestamp, spawned_event]]
            #return single event.
        else:
            store.add_costumer_to_count(self.costumer, line_num)
            return None
        # add the costumer to the certain list in the store.


class BeginCheck(Event):
    """
    a costumer begins check out.
    """
    def __init__(self, timestamp, count_num):

        """
        check out a costumer waiting in line.
        @precondition:  the type == 'cashier_count', 'express_count' or 'self_serve_count'
        :param timestamp: int
        :param count_num: int
        :return: None
        """
        self.timestamp = timestamp
        self.count_num = count_num
        self._add_time = 0

    def do(self, store):
        """
        return a FinishCheck.
        """
        # the time spent on checkout.
        line_num = self.count_num
        # the line that one costumer is going to start checkout.
        count_type = store.count_line[line_num].count_type
        # the count_type is found.
        if count_type == 'cashier_count':
            returned = store.count_line[line_num].costumer_waiting_list.returnfirst()
            add_time = returned.items + 7
        elif count_type == 'express_count':
            returned = store.count_line[line_num].costumer_waiting_list.returnfirst()
            add_time = returned.items + 4
        elif count_type == 'self_serve_count':
            returned = store.count_line[line_num].costumer_waiting_list.returnfirst()
            add_time = 2 * returned.items + 1
        finish_timestamp = self.timestamp + add_time
        return [[finish_timestamp, FinishCheck(finish_timestamp, self.count_num)]]
        # return single event.




class FinishCheck(Event):
    """
    costumer finish check.
    """
    def __init__(self, timestamp, count_num):
        """

        :param timestamp: int
        :param count_num: int
        :return: None
        """
        self.timestamp = timestamp
        self.count_num = count_num
        self.costumer_name = []

    def do(self, store):
        """
        finish the do event, dequeue the costumer and return None.
        :param store: GroceryStore.
        :return: next BeginCheck or None.
        """
        line_num = self.count_num
        store.count_line[line_num].costumer_waiting_list.dequeue()
        # pop a costumer.
        if not store.count_line[line_num].costumer_waiting_list.is_empty():
            return [[self.timestamp, BeginCheck(self.timestamp, line_num)]]
        else:
            return None
        # return single event.


class Close(Event):
    """
    One of the count closed.
    """
    def __init__(self, timestamp, count_num):
        """

        :param timestamp: int
        :param count_num: int
        :return:None
        """
        self.timestamp = timestamp
        self.count_num = count_num

    def do(self, store):
        """
        close a count, dequeue and add costumers.
        :param store: GroceryStore.
        :return: Event or None.
        """
        return_event_list = []
        time = self.timestamp - 1
        # thing that gonna be return.
        while store.count_line[self.count_num].costumer_waiting_list.qlen() > 1:
            dequeue_costumer = store.count_line[self.count_num].costumer_waiting_list.pop()
            time = time + 1
            return_event_list.append([time, Arrive(time, dequeue_costumer)])
        store.count_close(self.count_num)
        return return_event_list


def create_event_list(filename):
    """Return a list of Events based on raw list of events in <filename>.

    Precondition: the file stored at <filename> is in the format specified
    by the assignment handout.

    @param filename: str
        The name of a file that contains the list of events.
    @rtype: PriorityQueue()
    """
    events = PriorityQueue()
    # the turned events,contains Event
    with open(filename, 'r') as file:
        for line in file:
            # Create a list of words in the line, e.g.
            # ['60', 'Arrive', 'Bob', '5'].
            #   time  event_name name  items
            #['50', 'Close', '0']
            #  time event_name line_num
            # Note that these are strings, and you'll need to convert some of
            # them to ints.
            tokens = line.split()
            if tokens[1] == 'Arrive':
                events.add([int(tokens[0]),Arrive(int(tokens[0]), Costumer(int(tokens[0]), tokens[2], int(tokens[3])))])
            elif tokens[1] == 'Close':
                events.add([int(tokens[0]), Close(int(tokens[0]), int(tokens[2]))])
    return events


if __name__ == '__main__':
    import doctest
    doctest.testmod()
