/***
 A divide-and-conquer strategy where a recursive helper function swaps the outermost pair and delegates the inner sub-array to the next stack frame.
 Time Complexity: O(n)
 Space Complexity: O(n)
 */


void reverseReccursive(List<int> nums, int left, int right){
  if(left>= right){
    return;
  }
  int temp = nums[left];
  nums[left] = nums[right];
  nums[right] = temp;

  reverseReccursive(nums, left+1, right-1);

}

void main(){
  List<int> nums = [100,200,300,400];
  reverseReccursive(nums, 0, nums.length-1);
  print("The reversed array is: $nums");

}