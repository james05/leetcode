# Link: https://leetcode.com/problems/linked-list-cycle-ii/

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
  found_nodes = {}

  index = 0
  until head.nil?
    if !found_nodes[head.object_id].nil?
      return found_nodes[head.object_id]
    end

    found_nodes[head.object_id] = head

    index = index + 1

    head = head.next
  end

  return nil
end
