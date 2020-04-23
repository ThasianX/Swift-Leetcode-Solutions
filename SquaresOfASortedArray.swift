// Kevin Li - 10:00 PM - 4/19/20 - macOS 10.15

// https://leetcode.com/problems/squares-of-a-sorted-array/
// Space:

class Solution {
    func sortedSquares(_ A: [Int]) -> [Int] {
        var sorted = Array(repeating: 0, count: A.count)
        var start = 0
        var end = A.count - 1
        var insertPosition = end

        while start <= end {
            let sq1 = A[start] * A[start]
            let sq2 = A[end] * A[end]

            if sq1 > sq2 {
                sorted[insertPosition] = sq1
                insertPosition -= 1
                start += 1
            } else {
                sorted[insertPosition] = sq2
                insertPosition -= 1
                end -= 1
            }
        }

        return sorted
    }
}
