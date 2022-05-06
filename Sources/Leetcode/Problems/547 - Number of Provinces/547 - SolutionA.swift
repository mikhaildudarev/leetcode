//  Created by Mikhail Dudarev on 06.05.2022.

import Algo

extension Problem547NumberOfProvinces {
    
    final class SolutionA: Problem547NumberOfProvincesSolution {
        
        func findCircleNum(_ isConnected: [[Int]]) -> Int {
            let cities = Array(0..<isConnected.count)
            let provinces = DisjointSet.UnionByRank(cities)
            for city in cities {
                for (city2, isConnected) in isConnected[city].enumerated() where isConnected == 1 {
                    try! provinces.union(city, city2)
                }
            }
            var set = Set<Int>()
            for city in cities {
                set.insert(try! provinces.find(city))
            }
            return set.count
        }
        
    }
    
}
