// Kevin Li - 6:22 PM - 4/22/20 - macOS 10.15

// https://leetcode.com/problems/di-string-match/
// Time: O(N)
// Space: O(N)

class Solution {
    func diStringMatch(_ S: String) -> [Int] {
        var N = S.count
        var lo = 0, hi = N
        var arr = [Int]()
        arr.reserveCapacity(N + 1)

        for c in S {
            if c == "I" {
                arr.append(lo)
                lo += 1
            } else {
                arr.append(hi)
                hi -= 1
            }
        }

        arr.append(lo)

        return arr
    }
}
