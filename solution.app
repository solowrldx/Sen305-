#include <algorithm>
#include <climits>
using namespace std;

/**

* Definition for a binary tree node.
* LeetCode provides this definition automatically.
*
* struct TreeNode {
* ```
  int val;
  ```
* ```
  TreeNode *left;
  ```
* ```
  TreeNode *right;
  ```
* ```
  TreeNode() : val(0), left(nullptr), right(nullptr) {}
  ```
* ```
  TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
  ```
* ```
  TreeNode(int x, TreeNode *left, TreeNode *right)
  ```
* ```
      : val(x), left(left), right(right) {}
  ```
* };
  */

class Solution {
public:
int maxPathSum(TreeNode* root) {
int maxSum = INT_MIN;
maxGain(root, maxSum);
return maxSum;
}

private:
int maxGain(TreeNode* node, int& maxSum) {
if (node == nullptr) {
return 0;
}

```
    int leftGain = max(0, maxGain(node->left, maxSum));
    int rightGain = max(0, maxGain(node->right, maxSum));

    int currentPathSum = node->val + leftGain + rightGain;

    maxSum = max(maxSum, currentPathSum);

    return node->val + max(leftGain, rightGain);
}
```

};
