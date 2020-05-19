// Kevin Li - 7:40 PM - 5/18/20

// https://leetcode.com/problems/design-hashset/

class MyHashSet {

    private var entries = [Bool]()

    // Time: O(n)
    func add(_ key: Int) {
        if key >= entries.count {
            entries += [Bool](
                repeating: false,
                count: key - entries.count + 1)
        }
        entries[key] = true
    }

    // Time: O(1)
    func remove(_ key: Int) {
        if key < entries.count {
            entries[key] = false
        }
    }

    // Time: O(1)
    /** Returns true if this set contains the specified element */
    func contains(_ key: Int) -> Bool {
        guard key < entries.count else { return false }
        return entries[key]
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
