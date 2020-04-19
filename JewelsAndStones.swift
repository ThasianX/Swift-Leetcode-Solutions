// Kevin Li - 12:25 PM - 4/19/20 - macOS 10.15

// https://leetcode.com/problems/jewels-and-stones/
class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        var jewelSet: Set<Character> = []
        var numOfStones = 0

        for jewel in J {
            jewelSet.insert(jewel)
        }

        for stone in S {
            if jewelSet.contains(stone) {
                numOfStones += 1
            }
        }

        return numOfStones
    }
}
