/*
https://leetcode.com/problems/longest-palindromic-substring/description/
*/

import UIKit

let s = Array("aab")
let p = Array("c*a*b")


var dp = [[Bool]]()
for _ in 0 ... p.count
{
    dp.append(Array<Bool>(repeating: true, count: s.count+1))
}

dp[0][0] = true

for i in 1 ..< s.count
{
    dp[0][i] = false
}
for j in 1 ..< p.count
{
    dp[j][0] = (j > 1) && (p[j-1] == "*") && (dp[j-2][0])
}


for i in 1 ... p.count
{
    for j in 1 ... s.count
    {
        print(j,i)
        if p[i-1] == "*"
        {
            dp[j][i] = dp[j][i-2] || (s[j-1] == p[i-2] || p[i-2] == ".") && dp[j-1][i]
        }else
        {
            dp[i][j] = (p[i-1] == ".") || p[i-1] == s[j-1] && dp[i-1][j-1]
        }
    }
}
print(dp[p.count][s.count])

/*
 //初始化第0行,除了[0][0]全为false，毋庸置疑，因为空串p只能匹配空串，其他都无能匹配
 for (int i = 1; i <= m; i++)
 dp[i][0] = false;
 //初始化第0列，只有X*能匹配空串，如果有*，它的真值一定和p[0][j-2]的相同（略过它之前的符号）
 for (int j = 1; j <= n; j++)
 dp[0][j] = j > 1 && '*' == p[j - 1] && dp[0][j - 2];
https://blog.csdn.net/hk2291976/article/details/51165010
 http://bangbingsyb.blogspot.com/2014/11/leetcode-regular-expression-matching.html
 */



