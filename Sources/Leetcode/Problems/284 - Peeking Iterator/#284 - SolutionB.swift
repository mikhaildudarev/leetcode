//  Created by Mikhail Dudarev on 27.04.2022.

extension Problem284PeekingIterator {
    
    final class SolutionB<Element: Equatable>: Problem284PeekingIteratorSolution {
        
        private var iterator: IndexingIterator<Array<Element>>
        private var nextElement: Element?
        
        init(_ arr: IndexingIterator<Array<Element>>) {
            iterator = arr
            nextElement = iterator.next()
        }
        
        func next() -> Element {
            defer {
                nextElement = iterator.next()
            }
            return nextElement!
        }
        
        func peek() -> Element {
            nextElement!
        }
        
        func hasNext() -> Bool {
            nextElement != nil
        }
        
    }
    
}
