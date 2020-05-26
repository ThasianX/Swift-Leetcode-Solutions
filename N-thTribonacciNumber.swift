// Kevin Li - 1:26 PM - 5/24/20

// https://leetcode.com/problems/n-th-tribonacci-number/
// Time: O(n)
// Space: O(1)

class Solution {

    func tribonacci(_ n: Int) -> Int {
        if n <= 1 { return n }
        if n == 2 { return 1 }

        // initial values of tribonacci sequence 3
        var num1 = 0
        var num2 = 1
        var num3 = 1

        // Every iteration calculates the tribonacci value
        // for next sequence
        for _ in 3..<n {
            let tribonacciValue = num1 + num2 + num3
            num1 = num2
            num2 = num3
            num3 = tribonacciValue
        }

        return num1 + num2 + num3
    }

}
