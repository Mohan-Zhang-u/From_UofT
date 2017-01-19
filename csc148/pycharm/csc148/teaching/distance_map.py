"""Assignment 1 - Distance map (Task 1)

This module contains the class DistanceMap, which is used to store and lookup
distances between cities.  This class does not read distances from the map file.
All reading from files is done in module experiment.

Your task is to design and implement this class.

Do not import any modules here.
"""


class DistanceMap:
    """ A distance map.
    """
    def __init__(self):
        """ Initialize a Distance Map.

        @type self: DistanceMap
        @rtype: None

        >>> m = DistanceMap()
        >>> m.add_new('Toronto', 'Ottawa', 235)
        >>> print(m)
        {'Toronto': {'Ottawa': 235}}
        """
        self._map = {}

    def __repr__(self):
        """ Return a user-friendly str of DistanceMap

        @type self: DistanceMap
        @rtype: str

        >>> m = DistanceMap()
        >>> m.add_new('Toronto', 'Ottawa', 235)
        >>> m.__repr__()
        "{'Toronto': {'Ottawa': 235}}"
        """
        return '{}'.format(self._map)

    def add_new(self, city1, city2, distance):
        """ Add a new path to the DistanceMap

        @type self: DistanceMap
        @type city1: str
        @type city2: str
        @type distance: float|int
        @rtype: None

        >>> m = DistanceMap()
        >>> m.add_new('Toronto', 'Ottawa', 235)
        >>> print(m)
        {'Toronto': {'Ottawa': 235}}
        >>> m.add_new('Toronto', 'Calgary', 763)
        >>> m.find_city('Toronto', 'Ottawa')
        235
        >>> m.find_city('Toronto', 'Calgary')
        763
        """
        if city1 not in self._map:
            # find whether this map contains city1
            self._map[city1] = {}
            new = {city2: distance}  # to form a new dict
            self._map[city1].update(new)
        else:
            if city2 not in self._map[city1]:
                new = {city2: distance}  # to form a new dict
                self._map[city1].update(new)
            # if not city1, create a key, city1.

    def find_city(self, city1, city2):
        """ Find the distance between two cities.

        @type self: DistanceMap
        @type city1: str
        @type city2: str
        @rtype int

        >>> m = DistanceMap()
        >>> m.add_new('Toronto', 'Ottawa', 235)
        >>> m.find_city('Toronto', 'Ottawa')
        235
        >>> m.add_new('Toronto', 'Calgary', 763)
        >>> m.find_city('Toronto', 'Calgary')
        763
        """
        for cities in self._map:
            if city1 == cities:      # find the source city
                view = self._map[city1]  # view is a dict
                for city in view.keys():   # city refers to values in map.
                    if city == city2:   # find the destination city
                        return self._map[city1][city2]

if __name__ == '__main__':
    import doctest
    doctest.testmod()
    import python_ta
    python_ta.check_all(config='.pylintrc')
