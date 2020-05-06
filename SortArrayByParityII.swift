// Kevin Li - 10:40 PM - 5/4/20 - macOS 10.15

// https://leetcode.com/problems/sort-array-by-parity-ii/
// Time: O(n)
// Space: O(n)

class Solution {

    func sortArrayByParityII(_ A: [Int]) -> [Int] {
        guard A.count > 1 else {
            return A
        }

        var arr = Array<Int>(repeating: 0, count: A.count)
        var evenIndex = 0, oddIndex = 1

        A.forEach { num in
            if num % 2 == 0 {
                arr[evenIndex] = num
                evenIndex += 2
            } else {
                arr[oddIndex] = num
                oddIndex += 2
            }
        }

        return arr
    }

}
