//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem706DesignHashMap {
    
    final class SolutionA: Problem706DesignHashMapSolution {
        
        // MARK: - Type Aliases
        typealias BucketElement = (key: Int, value: Int)
        
        // MARK: - Properties
        let capacity: Int = 10000
        var buckets: [[BucketElement]]
        
        // MARK: - Init/Deinit
        init() {
            buckets = Array(repeating: [], count: capacity)
        }
        
        // MARK: - Private Methods
        private func bucketIndex(for key: Int) -> Int {
            key % capacity
        }
        
        // MARK: - Internal Methods
        func put(_ key: Int, _ value: Int) {
            let newElement = BucketElement(key: key, value: value)
            let bucketIndex = bucketIndex(for: key)
            let elementIndex = buckets[bucketIndex].firstIndex { $0.key == key}
            guard let elementIndex = elementIndex else {
                buckets[bucketIndex].append(newElement)
                return
            }
            buckets[bucketIndex][elementIndex] = newElement
        }
        
        func get(_ key: Int) -> Int {
            let bucketIndex = bucketIndex(for: key)
            let element = buckets[bucketIndex].first { $0.key == key }
            guard let element = element else {
                return -1
            }
            return element.value
        }
        
        func remove(_ key: Int) {
            let bucketIndex = bucketIndex(for: key)
            let elementIndex = buckets[bucketIndex].firstIndex { $0.key == key }
            guard let elementIndex = elementIndex else {
                return
            }
            buckets[bucketIndex].remove(at: elementIndex)
        }
        
    }
    
}
