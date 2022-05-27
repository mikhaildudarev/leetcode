//  Created by Mikhail Dudarev on 27.05.2022.

extension Problem1342NumberOfStepsToReduceNumberToZero {
    
    final class SolutionA: Problem1342NumberOfStepsToReduceNumberToZeroSolution {
        
        func numberOfSteps(_ num: Int) -> Int {
            var result = Int.zero
            var num = num
            while num > .zero {
                num = num.isEven ? num / 2 : num - 1
                result += 1
            }
            return result
        }
        
    }
    
}
