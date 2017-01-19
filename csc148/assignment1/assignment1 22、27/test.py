__author__ = 'zhangmohan'
def find_the_priority_line(self, item_num):
        """
        According to the item number of the costumer, find out what line should the costumer goes into.
        @precondition:there is always at least one open line that has space for the customer.
        @:param item_num: int
        :return: int (line number)
        """
        min_of_cashier_count = 0
        min_of_express_count = 0 + self._cashier_count_num
        min_of_self_serve_count = 0 + self._cashier_count_num + self._express_count_num
        sorting_list = []
        #the thing that going to be sorted.
        line_num = 0
        #the line number.
        if item_num < 8:
            for i in self.count_line:
                sorting_list.append([i.qlen(), line_num])
                line_num = line_num + 1
            sorting_list.sort()
            return sorting_list[0][1]
        #return the line number with the minimum waiting costumers.
        else:
            copy = []
            #the copy of the self.count_line.
            for i in self.count_line:
                copy.append(i)
            copy = copy[:self._cashier_count_num] + copy[(len(self.count_line) - self._cashier_count_num - self._express_count_num + 1):]
            for i in copy:
                sorting_list.append([i.qlen(), line_num])
                line_num = line_num + 1
            sorting_list.sort()
            return sorting_list[0][1]