// Kevin Li - 11:30 AM - 5/9/20 - macOS 10.15

// https://leetcode.com/problems/fibonacci-number/
// Time: O(n)
// Space: O(1)

class Solution {

    func fib(_ N: Int) -> Int {
        guard N > 1 else { return N }

        var current = 0
        var previous1 = 1
        var previous2 = 0

        for num in 2...N {
            current = previous1 + previous2
            previous2 = previous1
            previous1 = current
        }

        return current
    }

}
