//  Created by Mikhail Dudarev on 25.05.2022.

import Algo

extension Problem323NumberOfConnectedComponentsInUndirectedGraph {
    
    final class SolutionA: Problem323NumberOfConnectedComponentsInUndirectedGraphSolution {
        
        func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
            let set = DisjointSet.UnionByRank(Array(0..<n))
            for edge in edges {
                try! set.union(edge[0], edge[1])
            }
            let groups = set.reduce(into: Set<Int>()) { partialResult, element in
                partialResult.insert(try! set.find(element))
            }
            return groups.count
        }
        
    }
    
}
