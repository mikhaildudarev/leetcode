//  Created by Mikhail Dudarev on 27.04.2022.

import Algo

extension Problem1584MinCostToConnectAllPoints {
    
    final class SolutionA: Problem1584MinCostToConnectAllPointsSolution {
        
        func minCostConnectPoints(_ points: [[Int]]) -> Int {
            var edges = [(start: [Int], end: [Int], length: Int)]()
            
            for (index, point1) in points.enumerated() {
                for point2 in points.dropFirst(index + 1) {
                    edges.append((point1, point2, manhattanDistance(from: point1, to: point2)))
                }
            }
            
            edges.sort { $0.length < $1.length }
            
            var disjointSet = DisjointSet.QuickUnion(points)
            
            var result = Int.zero
            for edge in edges {
                let didUnion = try! disjointSet.union(edge.start, edge.end)
                if didUnion {
                    result += edge.length
                }
            }
            
            return result
        }
        
        private func manhattanDistance(from point1: [Int], to point2: [Int]) -> Int {
            abs(point1[0] - point2[0]) + abs(point1[1] - point2[1])
        }
        
    }
    
}
