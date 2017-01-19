from bst import BinarySearchTree
from random import shuffle


class TreeExporter:
    """This class exports trees into a web-compatible format.

    Note: You shouldn't need to change this class!

    === Public attributes ===
    @type timeout: float
        The amount of time between animation frames, in seconds.
    """

    # === Private attributes ===
    # @type _trees: list
    #     A list of dictionaries representing the trees to export.

    def __init__(self, timeout=0.1):
        """Initialize a new tree exporter with a given timeout.

        @type self: TreeExporter
        @type timeout: float
        @rtype: None
        """
        self._trees = []
        self.timeout = timeout

    def add_tree(self, tree):
        """Add a new tree to be exported.

        @type self: TreeExporter
        @type tree: BinarySearchTree
        @rtype: None
        """
        self._trees.append({
            'height': tree.height(),
            'tree': tree.to_dict()
        })

    def export(self):
        """Export the tree data for the visualizer.

        Save the data from the trees to the file 'data.js'.

        @type self: TreeExporter
        @rtype: None
        """
        with open('data.js', 'w') as f:
            print(self._trees)
            f.write('var data = {};'.format(self._trees))
            f.write('var timeout = {};'.format(self.timeout))

    def reset(self):
        """Reset the list of trees to export.

        Note: this does not change 'data.js', you need to call export again.

        @type self: TreeExporter
        @rtype: None
        """
        self._trees = []


# TODO: Update this!
if __name__ == '__main__':
    exporter = TreeExporter()

    #items = [10, 5, 15, 3, 13, 7, 17]
    #items = [1,2,3,4,5,6,7,8,9,10,11,0]
    lst = list(range(1, 300))
    shuffle(lst)
    items = lst
    bst = BinarySearchTree(None)
    for item in items:
        bst.insert(item)
        exporter.add_tree(bst)
    exporter.export()
