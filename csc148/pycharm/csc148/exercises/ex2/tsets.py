# Exercise 2 - A Chain of People
#
# CSC148 Fall 2015, University of Toronto
# Instructor: David Liu
# ---------------------------------------------
"""Exercise 2, Task 2: PeopleChain.

Person: a person in the chain.
PeopleChain: ordered chain consisting of people.
ShortChainError: indicates chain is too short to perform action.
"""


class ShortChainError(Exception):
    pass


class Person:
    """A person in a chain of people.

    === Attributes ===
    @type name: str
        The name of the person.
    @type next: Person | None
        The next person in the chain, or None if this person is not holding
        onto anyone.
    """

    def __init__(self, name):
        """Create a person who is initially not holding onto anyone.

        @type self: Person
        @type name: str
        """
        self.name = name
        self.next = None  # Initially holding onto no one


class PeopleChain:
    """A chain of people.
    """
    # === Private Attributes ===
    # @type _leader: Person | None
    #     The first person in the chain, or None if the chain is empty.

    def __init__(self, names):
        """Create people linked together in the order provided in <names>.

        The leader of the chain is the first person in <names>.

        @type self: PeopleChain
        @type names: list[str]
        @rtype: None
        """
        if len(names) == 0:
            # No leader, representing an empty chain!
            self._leader = None
        else:
            # Set leader
            self._leader = Person(names[0])
            current_person = self._leader
            for name in names[1:]:
                # Set the link for the current person
                current_person.next = Person(name)
                # Update the current person
                # Note that current_person always refers to
                # the LAST person in the chain
                current_person = current_person.next

    def get_leader(self):
        """Return the name of the leader of the chain.

        @type self: PeopleChain
        @rtype: str

        Raise ShortChainError if chain has no leader.

        >>> chain = PeopleChain(['Iron Man', 'Janna', 'Kevan'])
        >>> chain.get_leader()
        'Iron Man'
        """
        if self._leader is None:
            raise ShortChainError
        else:
            return self._leader.name

chain = PeopleChain([])
chain.get_leader()