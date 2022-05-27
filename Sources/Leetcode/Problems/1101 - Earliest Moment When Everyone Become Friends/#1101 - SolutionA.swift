//  Created by Mikhail Dudarev on 27.05.2022.

import Algo

extension Problem1101EarliestMomentWhenEveryoneBecomeFriends {
    
    final class SolutionA: Problem1101EarliestMomentWhenEveryoneBecomeFriendsSolution {
        
        func earliestAcq(_ logs: [[Int]], _ n: Int) -> Int {
            let firstElement = Int.zero
            let sortedLogs = logs.sorted { $0[0] < $1[0] }
            let set = DisjointSet.QuickFind(Array(0..<n))
            for log in sortedLogs {
                try! set.union(log[1], log[2])
                if set.allSatisfy({ try! set.connected($0, firstElement) }) {
                    return log[0]
                }
            }
            return -1
        }
        
    }
    
}
