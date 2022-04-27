//  Created by Mikhail Dudarev on 27.04.2022.

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
            
            var disjointSet = DisjointSet(points)
            
            var result = Int.zero
            for edge in edges {
                let didUnion = disjointSet.union(edge.start, edge.end)
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

private struct DisjointSet<Element: Hashable> {

    typealias Parent = Int
    typealias Root = Int
    
    struct Node {
        let value: Element
        var parent: Parent
    }
    
    var nodes = [Node]()
    var nodeIndices = [Element: Int]()
    
    init(_ elements: [Element]) {
        elements.forEach {
            let index = nodes.count
            nodeIndices[$0] = index
            nodes.append(Node(value: $0, parent: index))
        }
    }
    
    func find(_ element: Element) -> Root? {
        guard var index = nodeIndices[element] else {
            return nil
        }
        var node = nodes[index]
        while node.parent != index {
            index = node.parent
            node = nodes[index]
        }
        return index
    }
    
    mutating func union(_ element1: Element, _ element2: Element) -> Bool {
        guard let root1 = find(element1) else {
            fatalError("Element not found in set: \(element1)")
        }
        guard let root2 = find(element2) else {
            fatalError("Element not found in set: \(element2)")
        }
        guard root1 != root2 else {
            return false // elements already in same group
        }
        nodes[root1].parent = root2
        return true
    }

}
