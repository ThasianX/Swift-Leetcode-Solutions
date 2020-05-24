// Kevin Li - 7:11 PM - 5/23/20

// https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
// Time: O(n)
// Space: O(n)

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution {

    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return nums.toBST
    }

}

private extension Array where Element == Int {

    var toBST: TreeNode? {
        return toBST(from: 0, to: count - 1)
    }

    func toBST(from start: Int, to end: Int) -> TreeNode? {
        // start needs to be less than or equal to end to
        // be able to calculate a valid middleIndex
        guard start <= end else { return nil }
        // Because of how we calculate middleIndex, we
        // are always putting the left most element in
        // the supplied range(start -> end) as the root
        let middleIndex = (start + end) / 2
        let root = TreeNode(self[middleIndex])
        root.left = toBST(from: start, to: middleIndex - 1)
        root.right = toBST(from: middleIndex + 1, to: end)
        return root
    }

}
