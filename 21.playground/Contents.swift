

public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
 }
 
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
     
        let result = ListNode(0)
        var current : ListNode?
        current = result
        var i = l1
        var j = l2
        
        while i != nil  && j != nil{
            if i!.val < j!.val
            {
                current?.next = i
                current = i
                i = i!.next
            }else
            {
                current?.next = j
                current = j
                j = j!.next
            }
        }
        if i != nil
        {
            current?.next = i
        }
        if j != nil
        {
            current?.next = j
        }
        
        return result.next
    }
}
