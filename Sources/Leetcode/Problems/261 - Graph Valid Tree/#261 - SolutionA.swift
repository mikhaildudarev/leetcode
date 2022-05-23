//  Created by Mikhail Dudarev on 23.05.2022.

import Algo

extension Problem261GraphValidTree {
    
    final class SolutionA: Problem261GraphValidTreeSolution {
        
        func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
            let elements = Array(0..<n)
            let set = DisjointSet.UnionByRank(elements)
            
            for edge in edges {
                guard try! !set.connected(edge[0], edge[1]) else {
                    return false
                }
                try! set.union(edge[0], edge[1])
            }
            
            return (0..<elements.count - 1).allSatisfy {
                try! set.connected(elements[$0], elements[$0 + 1])
            }
        }
        
    }
    
}
