import time


class Timer():
    """A Python context manager used to measure and output the amount of time
    a block of code takes.

    Usage:
    def run_time_test():
        with Timer('Some code'):
            x = 10
            assert True

    >>> run_time_test()
    Some code took 3.54532 seconds


    === Attributes ===
    @type label: str
        a label to describe the block of code.
    """

    def __init__(self, label='Block', is_verbose=True, interval_time = 0):
        """Initialize a Timer.

        @type self: Timer
        @type label: str
            a label to describe the block of code
        @type is_verbose: bool
        @rtype: None
        """
        self.label = label
        self.is_verbose = is_verbose
        self.interval_time = interval_time

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
        if self.is_verbose:
            print('{label} took {time} seconds'.format(label=self.label,
                                                       time=self.interval))
            self.interval_time = time
        return False
