//  Created by Mikhail Dudarev on 27.04.2022.

extension Array where Element: Collection {
    
    var shortest: Element? {
        sorted(by: { $0.count < $1.count }).first
    }
    
}
