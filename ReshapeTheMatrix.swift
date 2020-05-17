// Kevin Li - 9:12 AM - 5/17/20

// https://leetcode.com/problems/reshape-the-matrix/
// Time: O(r*c)
// Space: O(r*c)

class Solution {

    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        guard !nums.isEmpty && nums.area == (r * c) else { return nums }

        var reshapedMatrix = [[Int]].emptyMatrix(rows: r, columns: c)
        let flattenedNums = nums.flatMap { $0 }

        var currentIndex = 0
        for row in 0..<r {
            for column in 0..<c {
                reshapedMatrix[row][column] = flattenedNums[currentIndex]
                currentIndex += 1
            }
        }

        return reshapedMatrix
    }

}

private extension Array where Element == [Int] {

    static func emptyMatrix(rows: Int, columns: Int) -> [[Int]] {
        return [[Int]](
            repeating: [Int](repeating: 0, count: columns),
            count: rows)
    }

    var area: Int {
        return count * self[0].count
    }

}
