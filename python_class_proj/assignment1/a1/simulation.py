"""Assignment 1 - Grocery Store Simulation (Task 3)

This file should contain all of the classes necessary to model the different
kinds of events in the simulation.
"""
# Feel free to add extra imports here for your own modules.
# Just don't import any external libraries!
from container import PriorityQueue
from store import GroceryStore
from event import Event, create_event_list


class GroceryStoreSimulation:
    """A Grocery Store simulation.

    This is the class which is responsible for setting up and running a simulation.
    The API is given to you: your main task is to implement the two methods
    according to their docstrings.

    Of course, you may add whatever private attributes and methods you want.
    But because you should not change the interface, you may not add any public
    attributes or methods.

    This is the entry point into your program, and in particular is used for
    autotesting purposes. This makes it ESSENTIAL that you do not change the
    interface in any way!
    """
    # === Private Attributes ===
    # @type _events: PriorityQueue[Event]
    #     A sequence of events arranged in priority determined by the event
    #     sorting order.
    # @type _store: GroceryStore
    #     The grocery store associated with the simulation.
    def __init__(self, store_file):
        """Initialize a GroceryStoreSimulation from a file.

        @type store_file: str
            A file containing the configuration of the grocery store.
        @rtype: None
        """
        self._events = PriorityQueue()
        self._store = GroceryStore(store_file)

    def run(self, event_file):
        """Run the simulation on the events stored in <event_file>.

        Return a dictionary containing statistics of the simulation,
        according to the specifications in the assignment handout.

        @type self: GroceryStoreSimulation
        @type event_file: str
            A filename referring to a raw list of events.
            Precondition: the event file is a valid list of events.
        @rtype: dict[str, object]
        """
        # Initialize statistics
        stats = {
            'num_customers': 0,
            'total_time': 0,
            'max_wait': -1
        }

        initial_events = create_event_list(event_file)
        while initial_events !=[]:
            temp_event=initial_events.pop()
            self._events.add(temp_event)

        while not self._events.is_empty():
            event_processing=self._events.remove()
            if event_processing.type=='New':
                stats['num_customers']+=1
                revent_created,maxwait=self._store.do(event_processing)
                if maxwait>stats['max_wait']:
                    stats['max_wait']=maxwait
                self._events.add(revent_created)
            elif event_processing.type=='Check':
                self._events.add(self._store.do(event_processing))
            elif event_processing.type=='Finish':
                time_finished=self._store.do(event_processing)
                if time_finished>stats['total_time']:
                    stats['total_time']=time_finished
            else:
                close_line_index,close_line_time=self._store.do(event_processing)
                time_counter=1
                if close_line_index+1<=self._store.config_x['cashier_count']:
                    self._store.cashier[close_line_index][0]=9999
                    specific_close_index=close_line_index
                    for c in self._events._items:
                        if c.type_of_line=='Check' and c.type_of_line=='cashier' and c.num_of_line==close_line_index:
                            event_created=New_customer(close_line_time+time_counter,c.name,c.num_of_items)
                            self._events.add(event_created)
                        else:
                            pass

                elif close_line_index+1<=self._store.config_x['cashier_count']+self.config_x['express_count']:
                    self._store.express[close_line_index-self._store.config_x['cashier_count']][0]=9999
                    specific_close_index=close_line_index-self._store.config_x['cashier_count']
                    for c in self._events._items:
                        if c.type_of_line=='Check' and c.type_of_line=='express' and c.num_of_line==close_line_index:
                            event_created=New_customer(close_line_time+time_counter,c.name,c.num_of_items)
                            self._events.add(event_created)
                        else:
                            pass

                else:
                    self._store.self_serve[close_line_index-self._store.config_x['cashier_count']-self.config_x['express_count']][0]=9999
                    specific_close_index=close_line_index-self._store.config_x['cashier_count']-self.config_x['express_count']
                    for c in self._events._items:
                        if c.type_of_line=='Check' and c.type_of_line=='self_serve' and c.num_of_line==close_line_index:
                            event_created=New_customer(close_line_time+time_counter,c.name,c.num_of_items)
                            self._events.add(event_created)
                        else:
                            pass
                        
        

        # TODO: Process all of the events, collecting statistics along the way.

        
        return stats


# We have provided a bit of code to help test your work.
if __name__ == '__main__':
    sim = GroceryStoreSimulation('config.json')
    stats = sim.run('events.txt')
    print(stats)
