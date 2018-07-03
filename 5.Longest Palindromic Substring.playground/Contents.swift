/*
https://leetcode.com/problems/longest-palindromic-substring/description/
*/

import UIKit

class Solution {
    
    var array : Array<Character>!
    var table : Array<Bool>!
    var count : Int!
    
    func longestPalindrome(_ s: String) -> String
    {
        array = Array(s)
        count = array.count
        table = Array<Bool>(repeating: false, count: s.count * s.count)
        
        if count <= 1
        {
            return s
        }
        if count == 2
        {
            if array[0] == array[1]
            {
                return s
            }else
            {
                return String(array[0])
            }
        }

        if Array(Set(array)).count == 1
        {
            return s
        }
        
        
        var start = 0
        var length = 1
        
        //1,2
        for i in 0 ..< count
        {
            table[i*count+i] = true
            
            if ((i < (count - 1)) && array[i] == array[i+1])
            {
                start = i
                length = 2
                table[i*count+(i+1)] = true
            }
        }
        
        // >=3
        for m in 3 ... count
        {
            for i in 0 ... count - m
            {
                let j = i + m - 1

                if table[(i+1)*count+j-1] && (array[i] == array[j])
                {
                    table[i*count+j] = true
                    if (j-i+1) > length
                    {
                        start = i
                        length = j - i + 1
                    }
                }
            }
        }
        return s.sub(from: start, length: length)
    }
}

extension String
{

    func sub(from:Int,length:Int) -> String
    {
        return String(self[self.index(self.startIndex, offsetBy: from) ..< self.index(self.startIndex, offsetBy: from+length)])
    }
}

"abcd".sub(from: 1, length: 2)

let s = Solution()
let result = s.longestPalindrome("cbbd")
print(result)
