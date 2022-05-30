//  Created by Mikhail Dudarev on 30.05.2022.

import Algo

extension Problem1971FindIfPathExistsInGraph {
    
    final class SolutionA: Problem1971FindIfPathExistsInGraphSolution {
        
        func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
            let set = DisjointSet.UnionByRank(Array(0..<n))
            for edge in edges {
                try! set.union(edge[0], edge[1])
            }
            return try! set.connected(source, destination)
        }
        
    }
    
}
