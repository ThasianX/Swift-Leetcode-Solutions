// Kevin Li - 5:02 PM - 5/7/20 - macOS 10.15

// https://leetcode.com/problems/middle-of-the-linked-list/
// Time: O(n)
// Space: O(1)

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {

    func middleNode(_ head: ListNode?) -> ListNode? {
        var slowNode = head, fastNode = head

        while let nextFastNode = fastNode?.next {
            slowNode = slowNode?.next
            fastNode = nextFastNode.next
        }

        return slowNode
    }

}
