/*
https://leetcode.com/problems/longest-palindromic-substring/description/
*/

import UIKit

func maxArea(_ height: [Int]) -> Int {
    
    var result = 0
    
    
    for i in 0 ..< height.count
    {
        for j in i+1 ..< height.count
        {
            let left = height[i]
            let right = height[j]
            let area = min(left, right) * (j-i)
            result = max(result, area)
        }
    }
    return result
}

maxArea([1,2,1])
