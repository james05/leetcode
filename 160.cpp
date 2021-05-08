/**
Link: https://leetcode.com/problems/intersection-of-two-linked-lists/
*/

/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    int countLength(ListNode* list) {
      int length = 0;

      while (list) {
          length++;
          list = list->next;
      }

      return length;
    }

    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        // count length of list1
        // count length of list2
        cout << "List 1 length: " << this->countLength(headA) << endl;
        cout << "List 2 length: " << this->countLength(headB) << endl;

        int list1Length = this->countLength(headA);
        int list2Length = this->countLength(headB);

        if (list1Length > list2Length) {
            int skip = list1Length - list2Length;
            
            while (skip--) {
                headA = headA->next;
            }
        } else if (list2Length > list1Length) {
            int skip = list2Length - list1Length;
            
            while (skip--) {
                headB = headB->next;
            }       
        }


        while (headA && headB) {
            if (headA == headB) {
                return headA;
            }

            headA = headA->next;
            headB = headB->next;
        }

        return NULL;
    }
};
