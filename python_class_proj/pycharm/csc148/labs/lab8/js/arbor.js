// Liberally inspired by: http://www.d3noob.org/2014/01/tree-diagrams-in-d3js_11.html.

var arbor = (function () {
    var module = {};
    var nodeRadius = 10;   // Change this variable to make the nodes smaller!
    var svg;

    /**
     * Draw the nodes.
     */
    function drawNodes(nodes) {
        var nextNodeId = 0;

        // Normalize.
        nodes.forEach(function (d) {
            d.y = d.depth * 100;
        });

        // Select and draw.
        var drawer = svg.selectAll("g.node")
            .data(nodes, function (d) {
                return d.id || (d.id = ++nextNodeId);
            })
            .enter().append("g")
            .attr("class", "node")
            .attr("transform", function (d) {
                return "translate(" + d.x + "," + d.y + ")";
            });

        // Draw node.
        drawer.append("circle")
            .attr("r", nodeRadius)
            .style("fill", "#fff");

        // Add text.
        drawer.append("text")
            .attr("dx", 0)
            .attr("dy", ".35em")
            .attr("text-anchor", "middle")
            .text(function (d) {
                return d.value;
            })
            .style("fill-opacity", 1);
    }

    /**
     * Draw the edges.
     */
    function drawEdges(edges) {
        var diagonal = d3.svg.diagonal()
            .projection(function (d) {
                return [d.x, d.y];
            });

        // Select and draw.
        svg.selectAll("path.link")
            .data(edges, function (d) {
                return d.target.id;
            })
            .enter().insert("path", "g")
            .attr("class", "edge")
            .attr("d", diagonal);
    }

    /**
     * Draw the specified tree.
     *
     * @param data: A recursive object that describes the tree. It has two
     * attributes:
     *      - value: the value of the root.
     *      - children: a list of data objects of the same form as this object,
     *          each representing a subtree.
     * @param width: the width of the tree, in number of items.
     * @param height: the height of the tree, in number of items.
     */
    module.draw = function (data, width, height) {
        width *= nodeRadius * 10;
        height *= nodeRadius * 10;

        svg = d3.select("body").append("svg")
            .attr("width", width)
            .attr("height", height)
            .append("g")
            .attr("transform", "translate(" + 0 + "," + 50 + ")");

        var tree = d3.layout.tree().size([width, height]);
        var nodes = tree.nodes(data).reverse();
        var edges = tree.links(nodes);

        drawNodes(nodes);
        drawEdges(edges);
    };

    module.clear = function () {
        d3.select("svg").remove();
    };

    return module;
}());
