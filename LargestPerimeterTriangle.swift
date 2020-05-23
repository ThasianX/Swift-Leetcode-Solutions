// Kevin Li - 4:56 PM - 5/22/20

// https://leetcode.com/problems/largest-perimeter-triangle/
// Time: O(n)
// Space: O(n)

class Solution {

    func largestPerimeter(_ A: [Int]) -> Int {
        var ascendingLengths = A.sorted()

        for i in (2..<A.count).reversed() {
            if ascendingLengths.isTriangle(from: i) {
                return ascendingLengths.sumOfTriangle(from: i)
            }
        }

        return 0
    }

}

extension Array where Element == Int {

    func sumOfTriangle(from index: Int) -> Int {
        let length1 = self[index]
        let length2 = self[index - 1]
        let length3 = self[index - 2]
        return length1 + length2 + length3
    }

    func isTriangle(from index: Int) -> Bool {
        let length1 = self[index] // largest length
        let length2 = self[index - 1]
        let length3 = self[index - 2]
        return isTriangle(length1, length2, length3)
    }

    private func isTriangle(_ length1: Int, _ length2: Int, _ length3: Int) -> Bool {
        // To be a triangle, the sum of every 2 sides must be greater
        // than the length of the other side. Of course, since we already
        // have the lengths sorted, we just need to check if the sum of
        // the 2 smaller lengths is greater than the largest length
        return length1 < (length2 + length3)
    }

}
