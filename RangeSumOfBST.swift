// Kevin Li - 12:48 PM - 4/19/20 - macOS 10.15

// https://leetcode.com/problems/range-sum-of-bst/
// Time: O(n). Space: O(1)
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        guard let root = root else {
            return 0
        }

        var sum = 0
        if root.val < L {
            sum += rangeSumBST(root.right, L, R)
        } else if root.val > R {
            sum += rangeSumBST(root.left, L, R)
        } else {
            sum += root.val + rangeSumBST(root.left, L, R) + rangeSumBST(root.right, L, R)
        }

        return sum
    }
}
