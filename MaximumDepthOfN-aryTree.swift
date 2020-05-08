// Kevin Li - 5:16 PM - 5/7/20 - macOS 10.15

// https://leetcode.com/problems/maximum-depth-of-n-ary-tree/
// Time: O(n)
// Space: O(1)

/**
 * Definition for a Node.
 * public class Node {
 *     public var val: Int
 *     public var children: [Node]
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.children = []
 *     }
 * }
 */

class Solution {

    func maxDepth(_ root: Node?) -> Int {
        guard let root = root else {
            return 0
        }

        var depth = 0
        for child in root.children {
            depth = max(depth, maxDepth(child))
        }

        return depth + 1
    }

}
