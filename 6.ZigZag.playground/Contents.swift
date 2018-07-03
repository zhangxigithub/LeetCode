/*
https://leetcode.com/problems/longest-palindromic-substring/description/
*/

import UIKit


extension Character {
    var asciiValue: Int {
        get {
            let s = String(self).unicodeScalars
            return Int(s[s.startIndex].value)
        }
    }
}


var string = ""
for c in "0123456789      4193 with words"
{
    if c.asciiValue <= 57 && c.asciiValue >= 48
    {
        if !(string == "" || c.asciiValue == 48)
        {
             string.appending(String(c))
        }
    }
}
print(string)
