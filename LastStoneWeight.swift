// Kevin Li - 10:20 PM - 5/14/20

// https://leetcode.com/problems/last-stone-weight/
// Time: O(n log n)
// Space: O(n)

class Solution {

    func lastStoneWeight(_ stones: [Int]) -> Int {
        var descendingStones = stones.sorted()

        while descendingStones.count > 1 {
            let stone1 = descendingStones.removeLast()
            let stone2 = descendingStones.removeLast()
            if stone1 != stone2 {
                let diff = abs(stone1 - stone2)
                descendingStones.insert(diff)
            }
        }
        return descendingStones.first ?? 0
    }

}

extension Array where Element: Comparable {

    mutating func insert(_ element: Element) {
        insert(element, at: insertionIndexOf(element))
    }

    func insertionIndexOf(_ element: Element) -> Int {
        var lo = 0
        var hi = count - 1
        while lo <= hi {
            let mid = (lo + hi)/2
            if self[mid] < element {
                lo = mid + 1
            } else if self[mid] > element {
                hi = mid - 1
            } else {
                return mid
            }
        }
        return lo // not found, would be inserted at position lo
    }

}
