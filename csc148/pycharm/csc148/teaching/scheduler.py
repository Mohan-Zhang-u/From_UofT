"""Assignment 1 - Scheduling algorithms (Task 4)

This module contains the abstract Scheduler interface, as well as the two
classes RandomScheduler and GreedyScheduler, which implement the two
scheduling algorithms described in the handout.

Your task is to implement RandomScheduler and GreedyScheduler.
You may *not* change the public interface of these classes, except that
you must write appropriate constructors for them.  The two constructors do not
need to have the same signatures.

Any attributes you use must be private, so that the public interface is exactly
what is specified by the Scheduler abstract class.
"""
from random import shuffle, choice
from container import PriorityQueue


class Scheduler:
    """A scheduler, capable of deciding what parcels go onto which trucks, and
    what route each truck will take.

    This is an abstract class.  Only child classes should be instantiated.

    You may add *private* methods to this class so make them available to both
    subclasses.
    """
    def schedule(self, parcels, trucks, verbose=False):
        """Schedule the given parcels onto the given trucks.

        Mutate the trucks so that they store information about which
        parcels they will deliver and what route they will take.
        Do *not* mutate the parcels.

        Return the parcels that do not get scheduled onto any truck, due to
        lack of capacity.

        If <verbose> is True, print step-by-step details regarding
        the scheduling algorithm as it runs.  This is *only* for debugging
        purposes for your benefit, so the content and format of this
        information is your choice; we will not test your code with <verbose>
        set to True.

        @type self: Scheduler
        @type parcels: list[Parcel]
            The parcels to be scheduled for delivery.
        @type trucks: list[Truck]
            The trucks that can carry parcels for delivery.
        @type verbose: bool
            Whether or not to run in verbose mode.
        @rtype: list[Parcel]
            The parcels that did not get scheduled onto any truck, due to
            lack of capacity.
        """
        raise NotImplementedError


class RandomScheduler(Scheduler):
    """ An algorithm to schedule parcels to trucks randomly.

    """

    def schedule(self, parcels, trucks, verbose=False):
        """Schedule the given parcels onto the given trucks.

        @type self: RandomScheduler
        @type parcels: list[Parcel]
            The parcels to be scheduled for delivery.
        @type trucks: list[Truck]
            The trucks that can carry parcels for delivery.
        @type verbose: bool
            Whether or not to run in verbose mode.
        @rtype: list[Parcel]
            The parcels that did not get scheduled onto any truck, due to
            lack of capacity.
        """
        copy = parcels[:]
        final = []

        while copy:
            if verbose is True:
                shuffle(copy)
                parcel = copy.pop()
                availiable_trucks = _get_availiable_trucks(parcel, trucks)
                if availiable_trucks:
                    shuffle(availiable_trucks)
                    truck = choice(availiable_trucks)
                    truck.put_parcel(parcel)
                final.append(parcel)

        return final


class GreedyScheduler(Scheduler):
    """ An algorithm to schedule parcels to trucks with criteria.
    """

    def __init__(self, parcel_order, truck_order, parcel_prioirty):
        """ Intialize the order and priority of the parcel.

        """
        # Destination is parcel prioirty
        if parcel_prioirty == 'volume':
            if parcel_order == 'non-decreasing':
                self._parcel_function = larger_volume
            if parcel_order == 'non-increasing':
                self._parcel_function = smaller_volume
            if truck_order == 'non-decreasing':
                self._truck_function = t_more_volume
            if truck_order == 'non-increasing':
                self._truck_function = t_less_volume
        # Volume is pracel priority.
        if parcel_prioirty == 'destinatoin':
            if parcel_order == 'non-decreasing':
                self._parcel_function = increasing_parcel
            if parcel_order == 'non-increasing':
                self._parcel_function = decreasing_parcel
            if truck_order == 'non-decreasing':
                self._truck_function = t_more_volume
            if truck_order == 'non-increasing':
                self._truck_function = t_less_volume

    def schedule(self, parcels, trucks, verbose=True):
        """Schedule the given parcels onto the given trucks.

        @type self: GreedyScheduler
        @type parcels: list[Parcel]
            The parcels to be scheduled for delivery.
        @type trucks: list[Truck]
            The trucks that can carry parcels for delivery.
        @type verbose: bool
            Whether or not to run in verbose mode.
        @rtype: list[Parcel]
            The parcels that did not get scheduled onto any truck, due to
            lack of capacity.
        """
        final = []
        copy = parcels[:]
        # construct a prioirty queue for parcels
        parcel_pq = PriorityQueue(self._parcel_function)
        while copy:
            # add all parcel into parcel_pq by passing thier priority functions.
            parcel_pq.add(copy.pop(0))
            # remove the parcel with highest priority from parcel_pq.
        while not parcel_pq.is_empty():
            highest_parcel = parcel_pq.remove()
            # find corresponding availiable trucks for this parcel
            availiable_trucks = _get_availiable_trucks(highest_parcel, trucks)
            if availiable_trucks:
                # find all availiable trucks whose route contains the
                # destination for which highest parcel can go.
                got_destination = []
                for truck in availiable_trucks:
                    if is_destination(highest_parcel, truck):
                        got_destination.append(truck)
                # put a parcel into the truck with highest priority
                if got_destination:
                    used = truck_choice(got_destination, self._truck_function)
                    used.put_parcel(highest_parcel)
                used = truck_choice(availiable_trucks, self._truck_function)
                used.put_parcel(highest_parcel)
            else:
                final.append(highest_parcel)

        return final


# some helper functions

def _get_availiable_trucks(parcel, trucks):
    """ Return a list of availiable trucks.

    @type parcel: Parcel
        A parcel needed to be delieveried
    @type trucks: list[Truck]
        The trucks that can carry parcels for delivery.
    @rtype: list[Truck]
        All trucks which can fill parcels.
    """
    availiable = []
    for truck in trucks:
        if truck.can_fill(parcel):
            availiable.append(truck)
    return availiable


def t_more_volume(truck1, truck2):
    """ Return True iff the truck1 has more volume than truck2 does.

    @type truck1: Truck
    @type truck2: Truck
    @rtype: bool
    """
    return (truck1.load - truck1.current) > (truck2.load - truck2.current)


def t_less_volume(truck1, truck2):
    """ Return True iff the truck1 has less volume than truck2 does.

    @type truck1: Truck
    @type truck2: Truck
    @rtype: bool
    """
    return (truck1.load - truck1.current) < (truck2.load - truck2.current)


def smaller_volume(parcel1, parcel2):
    """ Return True iff the parcel1's volume is smaller then parcel2's.

    @type parcel1: Parcel
    @type parcel2: Parcel
    @rtype: bool
    """
    return parcel1.volume < parcel2.volume


def larger_volume(parcel1, parcel2):
    """ Return True iff the parcel1's volume is larger then parcel2's.

    @type parcel1: Parcel
    @type parcel2: Parcel
    @rtype: bool
    """
    return parcel1.volume > parcel2.volume


def decreasing_parcel(parcel1, parcel2):
    """ Return True iff the parcel1's destincation is larger than or equal to
    parcel2's destination by comparing strings alphabetically.

    @type parcel1: Parcel
    @type parcel2: Parcel
    @rtype: bool
    """
    return parcel1.destination >= parcel2.destination


def increasing_parcel(parcel1, parcel2):
    """ Return True iff the parcel2's destincation is larger than or equal to
    parcel1's destination by comparing strings alphabetically.

    @type parcel1: Parcel
    @type parcel2: Parcel
    @rtype: bool
    """
    return parcel2.destination >= parcel1.destination


def truck_choice(availiable_trucks, method):
    """ Put the parcel with highest priority into the truck according to the
    criteria.

    @type availiable_trucks: list[trucks]
    @type method: function
    @rtype: Truck
    """
    priority = PriorityQueue(method)
    for truck in availiable_trucks:
        priority.add(truck)
    return priority.remove()


def is_destination(parcel, truck):
    """ Return True iff parcel's destinatin is in truck's route.

    @type parcel: Parcel
    @type truck: Truck
    """
    if parcel.destination in truck.route:
        return True
    return False


if __name__ == '__main__':
    import doctest
    doctest.testmod()
    import python_ta
    python_ta.check_all(config='.pylintrc')
