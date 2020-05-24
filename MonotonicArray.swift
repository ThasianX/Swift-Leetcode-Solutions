// Kevin Li - 6:37 PM - 5/23/20

// https://leetcode.com/problems/monotonic-array/
// Time: O(n)
// Space: O(1)

class Solution {

    // Monotone increasing: ascending -> [<= sort]
    // Monotone decreasing: descending -> [>= sort]
    func isMonotonic(_ A: [Int]) -> Bool {
        return A.isMonotonic
    }

}

private extension Array where Element: Comparable {

    var isMonotonic: Bool {
        return isSorted(by: monotonicSort)
    }

    func isSorted(by areInIncreasingOrder: (Element, Element) -> Bool) -> Bool {
        for i in 1..<count {
            if !areInIncreasingOrder(self[i-1], self[i]) {
                return false
            }
        }
        return true
    }

    private var monotonicSort: (Element, Element) -> Bool {
        return canBeMonotonicIncreasing ? monotoneIncreasingSort : monotoneDecreasingSort
    }

    // You can determine if A is monotone increasing or decreasing just by comparing the first and last values
    private var canBeMonotonicIncreasing: Bool {
        return first! < last!
    }

    private func monotoneIncreasingSort(left: Element, right: Element) -> Bool {
        return left <= right
    }

    private func monotoneDecreasingSort(left: Element, right: Element) -> Bool {
        return left >= right
    }

}
