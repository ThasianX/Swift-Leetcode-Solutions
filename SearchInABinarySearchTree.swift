// Kevin Li - 2:46 PM - 4/29/20 - macOS 10.15

// https://leetcode.com/problems/search-in-a-binary-search-tree/
// Time: O(log n)
// Space: O(1)

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

    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        if root.val == val { return root }

        if root.val > val {
            return searchBST(root.left, val)
        } else {
            return searchBST(root.right, val)
        }
    }

}
