// Kevin Li - 10:46 PM - 5/27/20

// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/
// Time: O(n) - looping through prices. price comparisons are constant
// Space: O(1) - only tracking maxProfit with an int

class Solution {

    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0

        for i in 0..<prices.count-1 {
            let profit = prices[i+1] - prices[i]
            if profit > 0 {
                maxProfit += profit
            }
        }

        return maxProfit
    }

}

