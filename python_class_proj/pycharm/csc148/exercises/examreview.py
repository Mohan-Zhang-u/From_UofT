__author__ = 'zhangmohan'
def fast_intersection(lst1, lst2):
    relst = []
    index1 = 0
    index2 = 0
    while index1 < len(lst1) and index2 < len(lst1):
        if lst1[index1] == lst2[index2]:
            relst.append(lst1[index1])
            index1+=1
            index2+=1
        elif lst1[index1] < lst2[index2]:
            index1+=1
        else:
            index2+=1
    return relst

ls1 = [1,9,10,69]
ls2 = [9,69,77,100]
print(fast_intersection(ls1, ls2))
