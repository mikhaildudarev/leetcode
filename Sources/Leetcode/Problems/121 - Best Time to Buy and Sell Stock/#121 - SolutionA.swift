//  Created by Mikhail Dudarev on 09.06.2022.

extension Problem121BestTimeToBuyAndSellStock {
    
    final class SolutionA: Problem121BestTimeToBuyAndSellStockSolution {
        
        /// - Complexity: time O(N), space O(1)
        func maxProfit(_ prices: [Int]) -> Int {
            guard var price = prices.first else {
                return Int.zero
            }
            var profit = Int.zero
            for nextPrice in prices.dropFirst() {
                if nextPrice <= price {
                    price = nextPrice
                    continue
                }
                let profitCandidate = nextPrice - price
                if profitCandidate > profit {
                    profit = profitCandidate
                }
            }
            return profit
        }
        
    }
    
}
