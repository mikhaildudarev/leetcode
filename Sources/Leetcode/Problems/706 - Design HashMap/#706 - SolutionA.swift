//  Created by Mikhail Dudarev on 27.04.2022.

import Algo

extension Problem706DesignHashMap {
    
    final class SolutionA: Problem706DesignHashMapSolution {
        
        private let hashMap: HashMap.Naive<Int, Int>
        
        init() {
            hashMap = HashMap.Naive<Int, Int>(capacity: 10000)
        }
        
        func put(_ key: Int, _ value: Int) {
            hashMap.set(value, forKey: key)
        }
        
        func get(_ key: Int) -> Int {
            hashMap.get(forKey: key) ?? -1
        }
        
        func remove(_ key: Int) {
            hashMap.remove(forKey: key)
        }
        
    }
    
}
