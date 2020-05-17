// Kevin Li - 11:15 AM - 5/16/20

// https://leetcode.com/problems/average-of-levels-in-binary-tree/
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

    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var nodes = [root].compactMap { $0 }
        var averages = [Double]()
        while nodes.count > 0 {
            averages.append(nodes.average)
            nodes = nodes.children
        }
        return averages
    }

}

private extension Array where Element == TreeNode {

    var average: Double {
        return sum / Double(count)
    }

    var sum: Double {
        return Double(map { $0.val }.reduce(0, +))
    }

    var children: [TreeNode] {
        return flatMap { [$0.left, $0.right].compactMap { $0 } }
    }

}
