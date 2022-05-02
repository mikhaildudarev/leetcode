//  Created by Mikhail Dudarev on 02.05.2022.

extension Problem905SortArrayByParity {
    
    final class SolutionB: Problem905SortArrayByParitySolution {
        
        func sortArrayByParity(_ nums: [Int]) -> [Int] {
            nums.sorted { lhs, rhs in
                return lhs % 2 == .zero
            }
        }
        
    }
    
}
