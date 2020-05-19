// Kevin Li - 10:10 AM - 5/19/20

// https://leetcode.com/problems/majority-element/
// Time: O(n)
// Space: O(1)

class Solution {

    func majorityElement(_ nums: [Int]) -> Int {
        // nums.count is guaranteed to be greater than 0
        // The first element of nums is our reference element
        var majorityElement = nums[0]
        // This represents the number of times majorityElement
        // has appeared in a row so far. In the beginning, it's just 1
        var majorityElementStreak = 1

        // We skip the first element because that is the reference element
        for num in nums[1..<nums.count] {
            // majorityElementStreak == 0 means that the current
            // majorityElement's streak has ended, not that the current
            // majorityElement isn't the majority element within nums.
            // If it appears more times later in nums, it always has a chance
            // of becoming the majorityElement again
            if majorityElementStreak == 0 {
                majorityElement = num
                majorityElementStreak = 1
            } else if majorityElement == num {
                majorityElementStreak += 1
            } else {
                majorityElementStreak -= 1
            }
        }

        return majorityElement
    }

}
