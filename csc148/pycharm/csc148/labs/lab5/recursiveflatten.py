__author__ = 'zhangmohan'
def flatten1(lst):
    '''

    @param lst:
    @return:
    flatten1([[1, 5, 7], [[4]], 0, [-4, [6], [7, [8], 8]]])
    [1, 5, 7, 4, 0, -4, 6, 7, 8, 8]
    '''
    if isinstance(lst, int):
        return [lst]
    else:
        result = []
        for lst_i in lst:
            for i in flatten1(lst_i):
                result.append(i)
        return result

a = flatten1([[1, 5, 7], [[4]], 0, [-4, [6], [7, [8], 8]]])
print(a)

