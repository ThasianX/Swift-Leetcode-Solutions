// Kevin Li - 2:37 PM - 4/29/20 - macOS 10.15

// https://leetcode.com/problems/n-ary-tree-preorder-traversal/
// Time: O(n) - n: number of nodes in root
// Space: O(n)

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

    func preorder(_ root: Node?) -> [Int] {
        guard let root = root else {
            return []
        }
        var arr = [Int]()
        root.traversePreOrder { node in
            arr.append(node.val)
        }
        return arr
    }

}

extension Node {

    func traversePreOrder(_ visit: (Node) -> Void) {
        visit(self)
        children.forEach { $0.traversePreOrder(visit) }
    }

}
