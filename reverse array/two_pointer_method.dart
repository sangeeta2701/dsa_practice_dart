/** 
Maintain two indices: left starting at the beginning (0) and right starting at the end (length - 1). 
Swap the elements at these positions and move both pointers toward the middle until they cross.
Time Complexity: O(n) — We perform n/2 swaps.
Space Complexity: O(1) — In-place mutation; uses no extra array allocation.

**/


void reverseTwoPointer(List<int>nums){
  int left = 0;
  int right = nums.length -1;

  while(left<right){
    int temp = nums[left];
    nums[left] = nums[right];
    nums[right] = temp;

    left++;
    right--;
  }
}

void main(){
  List<int> sampleArray =[10,20,30,40,50];
  print("Given arraya is: ${sampleArray}");
  reverseTwoPointer(sampleArray);
  print("reveresed arraya is: ${sampleArray}");
}