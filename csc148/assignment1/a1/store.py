"""Assignment 1 - Grocery Store Models (Task 1)

This file should contain all of the classes necessary to model the entities
in a grocery store.
"""
# This module is used to read in the data from a json configuration file.
import json
import container
from event import Event
from event import New_customer
from event import Begin_checking
from event import Finish_checking
from event import Line_closed

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
        self.config_x=config
        self.cashier=[]
        self.express=[]
        self.self_serve=[]
        counter=0
        while counter<self.config_x['cashier_count']:
            self.cashier.append([0,0])
            counter+=1
        counter=0
        while counter<self.config_x['express_count']:
            self.express.append([0,0])
            counter+=1
        counter=0
        while counter<self.config_x['self_serve_count']:
            self.self_serve.append([0,0])
            counter+=1

        # <config> is now a dictionary with the keys 'cashier_count',
        # 'express_count', 'self_serve_count', and 'line_capacity'.
    def do(self,event):
        if event.type=='New':
            return self.do_New(event)
        elif event.type=='Check':
            return self.do_Check(event)
        elif event.type=='Finish':
            return self.do_Finish(event)
        else:
            return self.do_Close(event)
    def do_New(self,event):
        min_id1=min_index(self.cashier)
        min_id2=min_index(self.express)
        min_id3=min_index(self.self_serve)
        if self.cashier[min_id1][0]<=self.express[min_id2][0] and self.cashier[min_id1][0]<=self.self_serve[min_id3][0]and self.cashier[min_id1][0]<=self.config_x['line_capacity']:
            self.cashier[min_id1][0]+=1
            self.cashier[min_id1][1]+=(event.num_of_items+7)
            event.type_of_line='cashier'
            event.num_of_line=min_id1
            if self.cashier[min_id1][1]==event.num_of_items+7:
                return Finish_checking(event.timestamp+event.num_of_items+7,event.name,event.num_of_items,event.type_of_line,event.num_of_line),self.cashier[min_id1][1]
            else:
                return Begin_checking(event.timestamp+self.cashier[min_index(self.cashier)][1]-(event.num_of_items+7),event.name,event.num_of_items,event.type_of_line,event.num_of_line),self.cashier[min_id1][1]
        elif self.express[min_id2][0]<=self.self_serve[min_id3][0] and event.num_of_items<8 and self.express[min_id2][0]<=self.config_x['line_capacity']:
            self.express[min_id2][0]+=1
            self.express[min_id2][1]+=(event.num_of_items+4)
            event.type_of_line='express'
            event.num_of_line=min_id2
            if self.express[min_id2][1]==event.num_of_items+4:
                return Finish_checking(event.timestamp+event.num_of_items+4,event.name,event.num_of_items,event.type_of_line,event.num_of_line),self.express[min_id2][1]
            else:
                return Begin_checking(event.timestamp+self.express[min_index(self.express)][1]-(event.num_of_items+4),event.name,event.num_of_items,event.type_of_line,event.num_of_line),self.express[min_id2][1]
        elif self.self_serve[min_id3][0]<=self.config_x['line_capacity']:
            self.self_serve[min_id3][0]+=1
            self.self_serve[min_id3][1]+=(2*event.num_of_items+1)
            event.type_of_line='self_serve'
            event.num_of_line=min_id3
            if self.self_serve[min_id3][1]==2*event.num_of_items+1:
                return Finish_checking(event.timestamp+2*event.num_of_items+1,event.name,event.num_of_items,event.type_of_line,event.num_of_line),self.self_serve[min_id3][1]
            else:
                return Begin_checking(event.timestamp+self.self_serve[min_index(self.self_serve)][1]-(2*event.num_of_items+1),event.name,event.num_of_items,event.type_of_line,event.num_of_line),self.self_serve[min_id3][1]
        
        

    def do_Check(self,event):
        if event.type_of_line=='cashier':
            return Finish_checking(event.timestamp+event.num_of_items+7,event.name,event.num_of_items,event.type_of_line,event.num_of_line)
        elif event.type_of_line=='express':
            return Finish_checking(event.timestamp+event.num_of_items+4,event.name,event.num_of_items,event.type_of_line,event.num_of_line)
        else:
            return Finish_checking(event.timestamp+2*event.num_of_items+1,event.name,event.num_of_items,event.type_of_line,event.num_of_line)

    def do_Finish(self,event):
        if event.type_of_line=='cashier':
            self.cashier[event.num_of_line][0]-=1
            self.cashier[event.num_of_line][1]-=(event.num_of_items+7)
            return event.timestamp
        elif event.type_of_line=='express':
            self.express[event.num_of_line][0]-=1
            self.express[event.num_of_line][1]-=(event.num_of_items+4)
            return event.timestamp
        else:
            self.self_serve[event.num_of_line][0]-=1
            self.self_serve[event.num_of_line][1]-=(2*event.num_of_items+1)
            return event.timestamp
        

    def do_Close(self,event):
        return event.line_index,event.timestamp


def min_index(line):
    line.reverse()
    _min=99
    for c in line:
        if c[0]<=_min and c[0]!= -1:
            _min=c[0]
            global _min_index
            _min_index=line.index(c)
    return _min_index
    
        
        
# You can run a basic test here using the default 'config.json'
# file we provided.
if __name__ == '__main__':
    store = GroceryStore('config.json')
    # Execute some methods here
    print(store.config_x)
    print(store.cashier)
    print(store.express)
    print(store.self_serve)
    
