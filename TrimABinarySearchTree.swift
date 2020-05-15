// Kevin Li - 11:06 PM - 5/13/20

// https://leetcode.com/problems/trim-a-binary-search-tree/
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

    func trimBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> TreeNode? {
        guard let root = root else { return nil }

        if root.val >= L && root.val <= R {
            root.left = trimBST(root.left, L, R)
            root.right = trimBST(root.right, L, R)
            return root
        } else if root.val < L {
            return trimBST(root.right, L, R)
        } else {
            return trimBST(root.left, L, R)
        }
    }

}
