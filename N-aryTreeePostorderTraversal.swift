// Kevin Li - 10:50 PM - 4/23/20 - macOS 10.15

// https://leetcode.com/problems/n-ary-tree-postorder-traversal/
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

    func postorder(_ root: Node?) -> [Int] {
        guard let root = root else {
            return []
        }
        var arr = [Int]()
        root.traversePostOrder { node in
            arr.append(node.val)
        }
        return arr
    }

}

extension Node {

    func traversePostOrder(_ visit: (Node) -> Void) {
        children.forEach { $0.traversePostOrder(visit) }
        visit(self)
    }

}
