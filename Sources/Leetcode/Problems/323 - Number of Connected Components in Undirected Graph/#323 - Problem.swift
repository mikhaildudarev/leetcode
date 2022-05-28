//  Created by Mikhail Dudarev on 25.05.2022.

/**
 # [323. Number of Connected Components in an Undirected Graph](https://leetcode.com/problems/number-of-connected-components-in-an-undirected-graph/)
 
 ### Description
 You have a graph of n nodes. You are given an integer n and an array edges where edges[i] = [ai, bi] indicates that there is an edge between ai and bi in the graph. Return the number of connected components in the graph.

 ### Example 1
 Input: n = 5, edges = [[0,1],[1,2],[3,4]]
 Output: 2
 
 ### Example 2
 Input: n = 5, edges = [[0,1],[1,2],[2,3],[3,4]]
 Output: 1

 ### Constraints
 ```
 1 <= n <= 2000
 1 <= edges.length <= 5000
 edges[i].length == 2
 0 <= ai <= bi < n
 ai != bi
 There are no repeated edges.
 ```
 */

struct Problem323NumberOfConnectedComponentsInUndirectedGraph {
    private init() {}
}

protocol Problem323NumberOfConnectedComponentsInUndirectedGraphSolution {
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int
}