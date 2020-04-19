// Kevin Li - 1:13 PM - 4/18/20 - macOS 10.15

// https://leetcode.com/problems/two-sum/
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]

        for (i, num) in nums.enumerated() {
            if let index = map[num] {
                return [index, i]
            }
            map[target - num] = i
        }

        fatalError("There must be a solution")
    }
}
