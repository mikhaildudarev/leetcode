//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem284PeekingIterator {
    
    final class SolutionA<Element: Equatable>: Problem284PeekingIteratorSolution {
        
        private var iterator: IndexingIterator<Array<Element>>
        private var peeked: Element?
        
        init(_ arr: IndexingIterator<Array<Element>>) {
            iterator = arr
        }
        
        func next() -> Element {
            guard let peeked = peeked else {
                return iterator.next()!
            }
            self.peeked = nil
            return peeked
        }
        
        func peek() -> Element {
            guard let peeked = peeked else {
                peeked = iterator.next()
                return peeked!
            }
            return peeked
        }
        
        func hasNext() -> Bool {
            guard peeked != nil else {
                peeked = iterator.next()
                return peeked != nil
            }
            return true
        }
        
    }
    
}
