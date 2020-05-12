// Kevin Li - 2:25 PM - 5/11/20

// https://leetcode.com/problems/single-number/
// Time: O(n)
// Space: O(1)

class Solution {

    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0) { value, num in
            return value ^ num
        }
    }

}
