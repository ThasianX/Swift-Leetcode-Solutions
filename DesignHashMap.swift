// Kevin Li - 7:27 PM - 5/18/20

// https://leetcode.com/problems/design-hashmap/

class MyHashMap {

    private var entries = [Int]()

    // Time: O(n)
    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        if key >= entries.count {
            // We need the extra +1 to entries' length because the
            // key can have a value of 0. We liken that 0 to 1 to
            // represent the size of an array with just 1 key
            entries += [Int](
                repeating: -1,
                count: key - entries.count + 1)
        }
        entries[key] = value
    }

    // Time: O(1)
    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
        guard key < entries.count else { return -1 }
        // Can also be -1 if key doesn't exist at that index
        return entries[key]
    }

    // Time: O(1)
    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        if key < entries.count {
            entries[key] = -1
        }
    }

}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */

