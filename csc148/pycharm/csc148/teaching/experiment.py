"""Assignment 1 - Running experiments (Tasks 5 & 6)

This module contains class SchedulingExperiment.  It can create an experiment
with input data and an algorithm configuration specified in a dictionary, then
run the experiment, generate statistics as the result of the experiment, and
(optionally) report the statistics.

This module is responsible for all the reading of data from the data files.

To test your code, we will construct instances of SchedulingExperiment, call
its methods, and examine the dictionary of statistics that method run
returns.

If you defined any domain classes other than Parcel and Truck, you may import
them here.  You may not import external libraries.
"""

import distance_map
from scheduler import RandomScheduler, GreedyScheduler
from domain import Parcel, Truck
from distance_map import DistanceMap


class SchedulingExperiment:
    """An experiment in scheduling parcels for delivery.

    To complete an experiment involves four stages:

    1. Read in all data from necessary files, and create corresponding objects.
    2. Run a scheduling algorithm to assign parcels to trucks.
    3. Compute statistics showing how good the assignment of parcels to trucks
       is.
    4. Report the statistics from the experiment.

    TODO: Complete this class docstring with any missing information.
    """

    def __init__(self, config):
        """Initialize a new experiment from a configuration dictionary.

        Precondition: <config> contains keys and values as specified
        in Assignment 1.

        @type config: dict[str, str]
            The configuration for this experiment, including
            the data files and algorithm configuration to use.
        @rtype: None
        """
        for key in config:
            if key == 'depot_location':
                self.depot = config[key]
            if key == 'parcel_file':
                self.parcel_file = config[key]
            if key == 'truck_file':
                self.truck_file = config[key]
            if key == 'map_file':
                self.map_file = config[key]
            if key == 'algorithm':
                self.algorithm = config[key]
            if key == 'parcel_priority':
                self.parcel_priority = config[key]
            if key == 'parcel_order':
                self.parcel_order = config[key]
            if key == 'truck_order':
                self.truck_order = config[key]
            if key == 'verbose':
                self.verbose = config[key]

    def run(self, report=False):
        """Run the experiment and return statistics on the outcome.

        If <report> is True, print a report on the statistics from this
        experiment.  Either way, return the statistics in a dictionary.

        If <self.verbose> is True, print step-by-step details
        regarding the scheduling algorithm as it runs.

        @type self: SchedulingExperiment
        @type report: bool
            Whether or not to print a report on the statistics.
        @rtype: dict[str, int | float]
            Statistics from this experiment. Keys and values are as specified
            in Step 6 of Assignment 1.
        """
        res = {}
        distance_map = read_distance_map(self.map_file)
        parcel_list = read_parcels(self.parcel_file)
        truck_list = read_trucks(self.truck_file, self.depot)
        total_volume = 0

        for truck in truck_list:
            total_volume += truck.load

        if self.algorithm == 'random':
            unsent_parcels = RandomScheduler().schedule(parcel_list, truck_list)

            (scheduled_truck_num, average_distance,
             unused_truck_number, average_fullness, total_unused_volume) = \
                stats_manipulation(truck_list, distance_map, total_volume)

            res['fleet'] = scheduled_truck_num
            res['unused_trucks'] = unused_truck_number
            res['average_distance'] = average_distance
            res['average_fullness'] = average_fullness
            res['unused_space'] = total_unused_volume
            res['unscheduled'] = len(unsent_parcels)
        elif self.algorithm == 'greedy':
            scheduler = GreedyScheduler(self.parcel_order, self.truck_order)
            unsent_parcels = scheduler.schedule(parcel_list, truck_list)
            (scheduled_truck_num, average_distance,
             unused_truck_number, average_fullness, total_unused_volume) = \
                stats_manipulation(truck_list, distance_map, total_volume)

            res['fleet'] = scheduled_truck_num
            res['unused_trucks'] = unused_truck_number
            res['average_distance'] = average_distance
            res['average_fullness'] = average_fullness
            res['unused_space'] = total_unused_volume
            res['unscheduled'] = len(unsent_parcels)
        if report:
            print(res)

        return res

    def _compute_stats(self):
        """Compute the statistics for this experiment.

        Precondition: _run has already been called.

        @type self: SchedulingExperiment
        @rtype: Dict[str, int | float]
            Statistics from this experiment. Keys and values are as specified
            in Step 6 of Assignment 1.
        """
        result = self.run(report=True)
        return result

    def _print_report(self):
        """Report on the statistics for this experiment.

        This method is *only* for debugging purposes for your benefit, so
        the content and format of the report is your choice; we
        will not call your run method with <report> set to True.

        Precondition: _compute_stats has already been called.

        @type self: SchedulingExperiment
        @rtype: None
        """
        result = self._compute_stats()
        print(result)


# ----- Helper functions -----

def read_parcels(parcel_file):
    """Read parcel data from <parcel_file> and return XXXX

    @type parcel_file: str
        The name of a file containing parcel data in the form specified in
        Assignment 1.
    @rtype: List[Parcels]

    """
    with open(parcel_file, 'r') as file:
        parcel_list = []
        for line in file:
            tokens = line.strip().split(',')
            pid = int(tokens[0].strip())
            source = tokens[1].strip()
            destination = tokens[2].strip()
            volume = int(tokens[3].strip())

            parcel = Parcel(source, destination, volume, pid)
            parcel_list.append(parcel)
        return parcel_list


def read_distance_map(distance_map_file):
    """Read distance data from <distance_map_file> and return XXXX

    @type distance_map_file: str
        The name of a file containing distance data in the form specified in
        Assignment 1.
    @rtype: DistanceMap
    """
    distance_map = DistanceMap()
    with open(distance_map_file, 'r') as file:
        for line in file:
            tokens = line.strip().split(',')
            c1 = tokens[0].strip()
            c2 = tokens[1].strip()
            dist = int(tokens[2].strip())

            distance_map.add_new(c1, c2, dist)


def read_trucks(truck_file, depot_location):
    """Read truck data from <truck_file> and return XXXX

    @type truck_file: str
        The name of a file containing truck data in the form specified in
        Assignment 1.
        The city where all the trucks (and packages) are at the start of the
        experiment.
    @type depot_location: str
    @rtype: List[Trucks]
    """
    with open(truck_file, 'r') as file:
        truck_list = []
        for line in file:
            tokens = line.strip().split(',')
            tid = int(tokens[0])
            capacity = int(tokens[1])

            truck = Truck(tid, capacity, depot_location)
            truck_list.append(truck)
        return truck_list


def stats_manipulation(truck_list, distance_map, total_volume):
    """
    @type truck_list: list[Truck]
    @type distance_map: DistanceMap
    @type total_volume: int
    @rtype: int, float, float
    """
    total_volume = total_volume
    total_unused_volume = 0
    total_distance = 0
    scheduled_trucks = []
    for truck in truck_list:
        if len(truck.route) == 1:
            scheduled_trucks.append(truck)
            total_unused_volume += truck.current
            i = 0
            while not truck.route[-1]:
                start = truck.route[i]
                end = truck.route[i + 1]
                segment = distance_map.find_city(start, end)
                total_distance += segment
                i += 1

    unused_truck_number = int(len(truck_list) - len(scheduled_trucks))
    average_distance = total_distance / len(scheduled_trucks)
    average_fullness = (total_volume - total_unused_volume) / \
                       (len(scheduled_trucks))
    scheduled_truck_num = len(scheduled_trucks)
    return (scheduled_truck_num, unused_truck_number,
            average_distance, average_fullness, total_unused_volume)


def sanity_check(config_file):
    """Configure and run a single experiment on the scheduling problem
    defined in <config_file>

    Precondition: <config_file> is a json file with keys and values
    as in the dictionary format defined in Assignment 1.

    @type config_file: str
    @rtype: None
    """
    # Read an experiment configuration from a file and build a dictionary
    # from it.
    import json
    with open(config_file, 'r') as file:
        configuration = json.load(file)
    # Create and run an experiment with that configuration.
    experiment = SchedulingExperiment(configuration)
    experiment.run(report=True)


if __name__ == '__main__':
    import doctest
    doctest.testmod()
    # import python_ta
    #
    # python_ta.check_all(config='.pylintrc')

    # ------------------------------------------------------------------------
    # The following code can be used as a quick and dirty check to see if your
    # experiment can run without errors. Feel free to uncomment it for testing
    # purposes, but you should remove it before submitting your final version.
    # ------------------------------------------------------------------------
    sanity_check('data/demo.json')
