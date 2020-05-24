// Kevin Li - 9:02 PM - 5/22/20

// https://leetcode.com/problems/move-zeroes/
// Time: O(n)
// Space: O(1)

class Solution {

    // 2 pass approach
    // 1st pass moves all non-zero numbers to the front of the array
    // 2nd pass sets all numbers from the last non-zero index to the end of the array to 0
    func moveZeroes(_ nums: inout [Int]) {
        var lastNonZeroIndex = 0

        for num in nums where num != 0 {
            nums[lastNonZeroIndex] = num
            lastNonZeroIndex += 1
        }

        for i in lastNonZeroIndex..<nums.count {
            nums[i] = 0
        }
    }

}
