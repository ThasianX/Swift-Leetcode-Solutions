// Kevin Li - 11:57 AM - 5/9/20 - macOS 10.15

// https://leetcode.com/problems/find-lucky-integer-in-an-array/
// Time: O(n)
// Space: O(n)

class Solution {

    func findLucky(_ arr: [Int]) -> Int {
        return arr
            .reduce(into: [Int: Int]()) { luckyInts, num in
                luckyInts[num, default: 0] += 1
            }
            .reduce(into: -1) { luckyInt, value in
                if (value.0 == value.1) &&
                    (value.0 > luckyInt) {
                    luckyInt = value.0
                }
            }
    }

}
