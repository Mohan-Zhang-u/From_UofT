# Updated Oct 9, 2015
import time


class Timer:
    """A Python context manager used to measure and output the amount of time
    a block of code takes.

    Usage:
    def run_time_test():
        with Timer('Some code'):
            assert True

    run_time_test()
    > Some code took 3.54532 seconds


    === Attributes ===
    @type label: str
        A label to describe the block of code.
    @type interval: float
        The amount of time the block took.
    """

    def __init__(self, label='Block', storage=None, is_verbose=True):
        """Initialize a Timer.

        @type self: Timer
        @type label: str
            a label to describe the block of code
        @type storage: list | None
            A place to store the time of the code.
            A tuple (label, time) gets appended to the list
            when the block ends.
        @type is_verbose: bool
        @rtype: None
        """
        self.label = label
        self._storage = storage
        self._is_verbose = is_verbose
        self.interval = None

    def __enter__(self):
        """Enter a timed context.

        @type self: Timer
        @rtype: Timer
        """
        self.start = time.perf_counter()
        return self

    def __exit__(self, exc_type, exc_value, exc_trace):
        """Exit a timed context.

        @type self: Timer
        @rtype: str
        """
        self.end = time.perf_counter()
        self.interval = self.end - self.start
        if self._is_verbose:
            print('{label} took {time} seconds'.format(label=self.label,
                                                       time=self.interval))

        if self._storage is not None:
            self._storage.append((self.label, self.interval))

        return False
