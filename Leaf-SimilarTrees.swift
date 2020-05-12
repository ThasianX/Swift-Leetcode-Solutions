// Kevin Li - 10:08 PM - 5/11/20

// https://leetcode.com/problems/leaf-similar-trees/
// Time: O(n1 + n2)
// Space: O(n1 + n2)

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

    func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
        var root1leaves = [Int]()
        root1?.traverseLeaf { root1leaves.append($0) }
        var root2leaves = [Int]()
        root2?.traverseLeaf { root2leaves.append($0) }
        return root1leaves == root2leaves
    }

}

extension TreeNode {

    func traverseLeaf(_ visit: @escaping (Int) -> Void) {
        if left == nil && right == nil {
            visit(val)
        } else {
            left?.traverseLeaf(visit)
            right?.traverseLeaf(visit)
        }
    }

}
