__author__ = 'zhangmohan'
from timer import Timer
def adds(x, y):
    for i in range(10):
        x= x+y
        return x

def run_time_test():
    with Timer('add'):
        x, y = 1, 2
        for i in range(10):
            print(i)

run_time_test()
