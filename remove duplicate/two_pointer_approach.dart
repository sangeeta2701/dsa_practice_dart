/****
 * If the array is already sorted (e.g., [1, 1, 2, 2, 3, 4, 4]), all duplicate elements are contiguous. We use a writeIndex pointer (slow pointer) to place unique values at the front of the array and an i loop pointer (fast pointer) to scan through.
 * Time Complexity: O(n)
 * Space Complexity: O(1)
 */

int removeDuplicatesSortedArray(List<int> nums){
  if(nums.isEmpty){
    return 0;
  }
  int writeIndex =1;
  for(int i = 1; i<nums.length; i++){
    if(nums[i] != nums[i-1]){
      nums[writeIndex] = nums[i];
      writeIndex++;
    }
  }
  return writeIndex;
}

void main(){
  List<int> arr = [1,1,2,3,4,4,5,6,7,8,8];
  int newLength =  removeDuplicatesSortedArray(arr);
  List<int> output = [];
  for(int i=0; i<newLength; i++){
    output.add(arr[i]);
  }
  print("input is $arr");
  print("output is $output");
}