// Kevin Li - 2:25 PM - 4/19/20 - macOS 10.15

// https://leetcode.com/problems/merge-two-binary-trees/
// Time: O(m) - m being the number of overlapping nodes between the 2 trees.
// Space: O(m)

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
     func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
         guard let t1 = t1 else {
             return t2
         }

         guard let t2 = t2 else {
             return t1
         }

         var mergedTree = TreeNode(t1.val + t2.val)
         mergedTree.left = mergeTrees(t1.left, t2.left)
         mergedTree.right = mergeTrees(t1.right, t2.right)
         return mergedTree
     }
 }
