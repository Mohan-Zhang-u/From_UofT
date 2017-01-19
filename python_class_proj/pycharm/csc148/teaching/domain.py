"""Assignment 1 - Domain classes (Task 2)

This module contains all of the classes required to represent the entities
in the experiment, including at least a class Parcel and a class Truck.
"""


class Parcel:
    """ A Parcel.

    === Attributes ===
    @type source: str
    @type destination: str
    @type volume: int
    @type id_: str
    """
    def __init__(self, source, destination, volume, id_):
        """ Initialize a Parcel.

        === Attributes ===
        @type source: str
        @type destination: str
        @type volume: int
        @type id_: str|int
        @rtype: None

        >>> p = Parcel('Toronto', 'Montreal', 20, 't087')
        >>> p.source
        'Toronto'
        >>> p.destination
        'Montreal'
        >>> p.volume
        20
        >>> p.id_
        't087'
        """
        self.source = source
        self.destination = destination
        self.volume = volume
        self.id_ = id_

    def __repr__(self):
        """ Return a user-friendly string of Parcel

        @type self: Parcel
        @rtype: str

        >>> p = Parcel('Toronto', 'Montreal', 20, 't087')
        >>> print(p)
        {Toronto, Montreal, 20, t087}
        """
        return '{' + '{}, {}, {}, {}'.format(self.source, self.destination,
                                             self.volume, self.id_) + '}'


class Truck:
    """ A Truck which contains lots of parcels.

    === Attributes ===
    @type id_: str
    @type load: int
    """
    def __init__(self, id_, load, depot):
        """ Initialize a Truck

        @type id_: int|str
        @type load: int
        @type depot: str
        @rtype: None

        >>> t = Truck('D03', 280, 'Toronto')
        >>> t.id_
        'D03'
        >>> t.load
        280
        >>> t.current
        280
        >>> t.route
        ['Toronto']
        >>> t.parcels
        []
        """
        self.id_ = id_
        self.load = load
        self.current = load
        self.route = [depot]
        self.parcels = []

    def can_fill(self, parcel):
        """ Return whether a truck can contains item.

        @type self: Truck
        @type parcel: Parcel
        @rtype: bool

        >>> p = Parcel('Toronto', 'Montreal', 20, 't087')
        >>> t = Truck('D03', 280, 'Toronto')
        >>> t.can_fill(p)
        True
        """
        now = self.current - parcel.volume
        if now < 0:
            return False
        return True

    def put_parcel(self, parcel):
        """ Put a new parcel in truck.
        @type self: Truck
        @type parcel: Parcel
        @rtype: None

        >>> p = Parcel('Toronto', 'Montreal', 20, 't087')
        >>> t = Truck('D03', 280, 'Toronto')
        >>> t.put_parcel(p)
        >>> t.parcels
        [{Toronto, Montreal, 20, t087}]
        >>> t.current
        260
        >>> t.route
        ['Toronto', 'Montreal']
        """
        if self.can_fill(parcel):
            self.parcels.append(parcel)
            self.route.append(parcel.destination)
            self.current -= parcel.volume

    def __contains__(self, parcel):
        """ Return whether the parcel is in the truck.

        @type self: Truck
        @type parcel: Parcel
        @rtype: bool

        >>> p = Parcel('Toronto', 'Montreal', 20, 't087')
        >>> t = Truck('D03', 280, 'Toronto')
        >>> t.put_parcel(p)
        >>> t.__contains__(p)
        True
        """
        for i in self.parcels:
            if i == parcel:
                return True
            return False

    def is_empty(self):
        """ Return whether a truck is empty.

        @type self: Truck
        @rtype: bool

        >>> t = Truck('D03', 280, 'Toronto')
        >>> t.current = 200
        >>> t.is_empty()
        False

        """
        return self.load == self.current

    def __repr__(self):
        """ Return whether a truck is empty.

        @type self: Truck
        @rtype: bool

        >>> t = Truck('D03', 280, 'Toronto')
        >>> t.current = 200
        >>> t.__repr__()
        "D03, 200, 280, ['Toronto'], []"
        """
        return '{}, {}, {}, {}, {}'.format(self.id_, self.current, self.load,
                                           self.route, self.parcels)


if __name__ == '__main__':
    import doctest
    doctest.testmod()
    import python_ta
    python_ta.check_all(config='.pylintrc')
