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

        # the three integers above store the three types of lines with minimum waiting costumer.
        for i in range(len(self.count_line)):
            if i+1 < self._cashier_count_num:
                if self.count_line[i].qlen() > self.count_line[i+1].qlen():
                    min_of_cashier_count = i + 1
            elif i+1 < self._express_count_num:
                if self.count_line[i].qlen() > self.count_line[i+1].qlen():
                    min_of_express_count = i + 1
            elif i+1 < self._self_serve_count_num:
                if self.count_line[i].qlen() > self.count_line[i+1].qlen():
                    min_of_self_serve_count = i + 1
        min_costumers_of_cashier_count = self._line_capacity + 100
        min_costumers_of_express_count = self._line_capacity + 100
        min_costumers_of_self_serve_count = self._line_capacity + 100
        #不让并没有开放的count进入选择priority的菜单。
        if self._cashier_count_num != 0:
            min_costumers_of_cashier_count = self.count_line[min_of_cashier_count].qlen()
        if self._express_count_num != 0:
            min_costumers_of_express_count = self.count_line[min_of_express_count].qlen()
        if self._self_serve_count_num != 0:
            min_costumers_of_self_serve_count = self.count_line[min_of_self_serve_count].qlen()
        return_num = 0
        # the number that will finally return.
        if item_num < 8:
            a = sorted([min_costumers_of_cashier_count, min_costumers_of_express_count, min_costumers_of_self_serve_count])
            for i in range(len(self.count_line)):
                if a[0] == self.count_line[i].qlen():
                    return i
        else:
            a = sorted([min_costumers_of_cashier_count, min_costumers_of_self_serve_count])
            for i in range(self._cashier_count_num):
                if a[0] == self.count_line[i].qlen():
                    return i
            for i in range(self._cashier_count_num + self._express_count_num, len(self.count_line)):
                if a[0] == self.count_line[i].qlen():
                    return i
        # find the priority is done.



    def count_close(self, line_num):
        """
        close a count
        :param line_num:
        :return:None
        """
        closed_line = self.count_line[line_num]
        if closed_line.count_type == 'cashier_count':
            self._cashier_count_num = self._cashier_count_num - 1
        elif closed_line.count_type == 'express_count':
            self._express_count_num = self._express_count_num - 1
        elif closed_line.count_type == 'self_serve_count':
            self._self_serve_count_num = self._self_serve_count_num - 1
        #let the number of the lines change.
        self.count_line.pop(line_num)
        self.count_line.insert(line_num,Count('cashier_count', 0))
        #close the line.

    def add_costumer_to_count(self, costumer, count_num):
        """
        add costumer to count.
        :param costumer: Costumer
        :param count_num: int
        :return:None
        """
        self.count_line[count_num].add_customer(costumer)