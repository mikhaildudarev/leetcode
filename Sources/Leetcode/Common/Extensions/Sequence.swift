//  Created by Mikhail Dudarev on 18.07.2022.

import Foundation

extension Sequence {
    
    func isSorted(by comparator: (Element, Element) -> Bool) -> Bool {
        var iterator = makeIterator()
        
        guard var prevElement = iterator.next() else {
            return true
        }
        
        while let element = iterator.next() {
            guard comparator(prevElement, element) else {
                return false
            }
            prevElement = element
        }
        
        return true
    }
    
}

extension Sequence where Element: Comparable {
    
    func isSorted() -> Bool {
        isSorted(by: <)
    }
    
}
