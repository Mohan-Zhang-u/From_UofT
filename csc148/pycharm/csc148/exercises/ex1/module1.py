# Exercise 1 - Car Simulation
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
class Car:
    """A class responsible for keeping track of all cars in the system.
    """
    # === Private Attributes ===
    # @type _cars: dict[str, Car]
    #     A map of unique string identifiers to the corresponding cars.
    def __init__(self,id,fuel,x=0,y=0):
        """Create a new CarManager.

        Initially there are no cars in the system.

        @type self: CarManager
        @rtype: None
        """
        self.x=x
        self.y=y
        self._cars = {}

    def add_car(self, id, fuel,x=0,y=0):
        """Add a new car to the system.

        The new car is identified by the string <id>, and has initial amount
        of fuel <fuel>.

        Do nothing if there is already a car with the given id.

        @type self: CarManager
        @type id: str
        @type fuel: int
        @rtype: None
        """
        # Check to make sure the identifier isn't already used.
        self.x=x
        self.y=y
        self.id=id
        self.fuel=fuel
        if id not in self._cars:
            self._cars[id] = fuel
            # TODO: Add the new car here.

    def move_car(self, id, new_x, new_y):
        """Move a car in the system.

        The car called <id> should be moved to position (<new_x>, <new_y>).

        @type self: CarManager
        @type id: str
        @type new_x: int
        @type new_y: int
        @rtype: None
        """
        if id in self._cars:
            if abs(self.x-new_x)+abs(self.y-new_y) > self.fuel:
                print('Your car will run out of fuel!')
                return None
            self.fuel = self.fuel - abs(self.x-new_x) - abs(self.y-new_y)
            self.x = new_x
            self.y = new_y
            self.self._cars[id] = self.fuel
            return None


    def get_car_position(self, id):
        """Return the position of car <id> in the system.

        Return a tuple of the (x, y) position of the car.

        @type self: CarManager
        @type id: str
        @rtype: (int, int)
        """
        if id in self._cars:
            return (self.x, self.y)
            # TODO: Get the position of the car.

    def get_car_fuel(self, id):
        """Return the amount of fuel of car <id> in the system.

        @type self: CarManager
        @type id: str
        @rtype: int
        """
        if id in self._cars:
            return self.fuel
            # TODO: Get the amount of fuel of the car.




