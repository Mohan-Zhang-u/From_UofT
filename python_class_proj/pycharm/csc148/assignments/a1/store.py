"""Assignment 1 - Grocery Store Models (Task 1)

This file should contain all of the classes necessary to model the entities
in a grocery store.
"""
# This module is used to read in the data from a json configuration file.
import json

class Count:
    '''A count include the type.

    '''
    def __init__(self, present_costumer = 0, count_type = 'cashier_count'):
        '''Initialize a Count according to the type.

        @precondition : count_type == 'express_count' or count_type == 'self_serve_count' or count_type == 'line_capacity'
        @param count_type: 'express_count' or 'self_serve_count' or 'self_serve_count'
        @return:None
        '''
        if not (count_type == 'cashier_count' or count_type == 'express_count' or count_type == 'self_serve_count'):
            raise NameError
            print("Please enter the correct count type")
            return None
        self.count_type = count_type
        self.present_costumer = present_costumer

        self._List_of_customers = []
        #stores the customers.
        return None

    def add_customer(self, name, items):
        '''
        Add a new customer to the private list self._List_of_customers
        @param name: str
        @param items: int
        @return: None
        '''
        self._List_of_customers.append(Costumer(name, items))
        return  None



class GroceryStore:
    """A grocery store.

    A grocery store should contain customers and checkout lines.

    TODO: make sure you update the documentation for this class to include
    a list of all public and private attributes, in the style found in
    the Class Design Recipe.
    """
    def __init__(self, filename):
        """Initialize a GroceryStore from a configuration file <filename>.

        @type filename: str
            The name of the file containing the configuration for the
            grocery store.
        @rtype: None
        """
        with open(filename, 'r') as file:
            config = json.load(file)
        # <config> is now a dictionary with the keys 'cashier_count',
        # 'express_count', 'self_serve_count', and 'line_capacity'.

        self._dic_of_count = config
        # <config> is now a dictionary with the keys 'cashier_count',

        self._counts_cap = self._dic_of_count['self_serve_count']
        #The count capacity.

        self.total_lines = self._dic_of_count['cashier_count'] + self._dic_of_count['express_count'] + self._dic_of_count['self_serve_count']
        #The total number of lines

        self._counts = {}
        for i in range(self.total_lines):
            if i < self._dic_of_count['cashier_count']:
                self._counts[i] = Count(0, 'cashier_count')
            elif i < self._dic_of_count['cashier_count'] + self._dic_of_count['express_count']:
                self._counts[i] = Count(0, 'express_count')
            elif i < self._dic_of_count['cashier_count'] + self._dic_of_count['express_count'] + self._dic_of_count['self_serve_count']:
                self._counts[i] = Count(0, 'self_serve_count')
            else :
                print('that is out of the loop')



    def print_the_counts(self):
        '''Print different types of counts that the store has.

        @return: None
        '''
        print('the store has' + self._dic_of_count['cashier_count'] + 'cashier_count(s)')
        print('the store has' + self._dic_of_count['express_count'] + 'express count(s)')
        print('the store has' + self._dic_of_count['self_serve_count'] + 'self_serve_count(s)')

        return None
    def print_the_counts_cap(self):
        '''Print the counts' capacity.

        @return: None
        '''
        print('the count capacity is' + self._dic_of_count['line_capacity'])
        return None

class Costumer:
    '''
    A costumer
    '''
    def __init__(self, name, items):
        '''

        @param name: str
        @param items: int
        @return: None
        '''
        self.name = name
        self.items = items
        return None




# You can run a basic test here using the default 'config.json'
# file we provided.
if __name__ == '__main__':
    store = GroceryStore('config.json')
    print(store._dic_of_count)
    print(store.total_lines)
    print(store._counts)
    # Execute some methods here








