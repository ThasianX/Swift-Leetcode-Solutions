// Kevin Li - 10:29 PM - 5/12/20

// https://leetcode.com/problems/invert-binary-tree/
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

    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }

        let tempLeft = root.left
        root.left = invertTree(root.right)
        root.right = invertTree(tempLeft)

        return root
    }

}
