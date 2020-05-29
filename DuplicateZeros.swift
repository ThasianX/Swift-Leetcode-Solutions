// Kevin Li - 9:49 PM - 5/28/20

// https://leetcode.com/problems/duplicate-zeros/
// Time: O(n) - n being the original arr's count
// Space: O(1) - since we're removing as we insert, space remains constant

class Solution {

    func duplicateZeros(_ arr: inout [Int]) {
        let maxCount = arr.count

        var i = 0
        while i < maxCount {
            if arr[i] == 0 {
                arr.insert(0, at: i) // Amortized O(1)
                arr.removeLast() // O(1)
                i += 1
            }
            i += 1
        }
    }

}
