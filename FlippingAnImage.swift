// Kevin Li - 1:30 PM - 4/19/20 - macOS 10.15

// https://leetcode.com/problems/flipping-an-image/
// Time: O(n). Space: O(n)

class Solution {
    func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var inverted: [[Int]] = []
        for row in A {
            inverted.append(
                row.map { $0 ^ 1 }
                .reversed())
        }
        return inverted
    }
}
