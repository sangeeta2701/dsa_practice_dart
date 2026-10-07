//Two sum array, where given an int array, find two sums that sum to a target x. Input array is [1, 2, 4, 5, 6], where target is 8.
//Two pointer method, where we will sort the array and then use two pointers to find the pair that sums to the target.
//Time complexity: O(n log n) for sorting + O(n) for two pointer traversal
//Space complexity: O(1) if we sort in place, otherwise O(n) for the sorted array

//Note: This method assumes that the input array can be modified (sorted). 
//If we want to keep the original array intact, we would need to create a copy of the array before sorting, which would increase the space complexity to O(n).



List<int> twoSumTwoPointer(List<int> nums, int target){
  int left = 0;
  int right = nums.length -1;

  while(left<right){
    int currentSum = nums[left] + nums[right];
    if(currentSum == target){
      print("Pair found: ${nums[left]} + ${nums[right]} = $target");
      return [left, right];
    }else if(currentSum<target){
      left++;    }else{
        right--;
      }
  }
  print("No pair found");
  return[];
}

void main(){
  List<int> input = [4,5,6,7,8,9];
  int target = 13;
  twoSumTwoPointer(input, target);

}
