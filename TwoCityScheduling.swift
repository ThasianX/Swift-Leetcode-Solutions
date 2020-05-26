// Kevin Li - 10:17 PM - 5/25/20

// https://leetcode.com/problems/two-city-scheduling/
// Time: O(n log n)
// Space: O(n)

class Solution {

    func twoCitySchedCost(_ costs: [[Int]]) -> Int {
        return costs.minimized
    }

}

private extension Array where Element == [Int] {

    var minimized: Int {
        // Sort: Better A costs -> Better B costs
        let sortedCosts = sorted(by: { cost1, cost2 in
            return cost1.differential > cost2.differential
        })
        return sortedCosts.sumOfACosts + sortedCosts.sumOfBCosts
    }

    var sumOfACosts: Int {
        return self[0..<count/2] // bc of how we sorted, better A costs are in the front half
            .map { $0[0] } // getting A cost
            .reduce(0, +)
    }

    var sumOfBCosts: Int {
        return self[count/2..<count] // bc of how we sorted, better B costs are in the latter half
            .map { $0[1] } // getting B cost
            .reduce(0, +)
    }

}

private extension Array where Element == Int {

    var differential: Int {
        // cost to go to B - cost to go to A
        // The bigger this number is, the more we want
        // to fly to A because it shows that B is much
        // more expensive than flying to A
        return self[1] - self[0]
    }

}
