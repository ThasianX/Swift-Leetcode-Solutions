// Kevin Li - 2:07 PM - 4/19/20 - macOS 10.15

// https://leetcode.com/problems/sort-array-by-parity/
// Time: O(n). Space: O(n)

class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        var arr = A
        var leading = 0
        var trailing = arr.count - 1

        while leading < trailing {
            if arr[leading] % 2 > arr[trailing] % 2 {
                arr.swapAt(leading, trailing)
            }

            if arr[leading] % 2 == 0 {
                leading += 1
            }

            if arr[trailing] % 2 != 0 {
                trailing -= 1
            }
        }

        return arr
    }
}
