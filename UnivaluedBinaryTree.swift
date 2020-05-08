// Kevin Li - 5:49 PM - 5/7/20 - macOS 10.15

// https://leetcode.com/problems/univalued-binary-tree/
// Time: O(n)
// Space: O(1)

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

    func isUnivalTree(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        return isUnivalTree(root.left, val: root.val) && isUnivalTree(root.right, val: root.val)
    }

    private func isUnivalTree(_ root: TreeNode?, val: Int) -> Bool {
        guard let root = root else { return true }

        if root.val != val { return false }

        return isUnivalTree(root.left, val: val) && isUnivalTree(root.right, val: val)
    }

}
