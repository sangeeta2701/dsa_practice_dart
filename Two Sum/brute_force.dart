//Two sum array, where given an int array, find two sums that sum to a target x. Input array is [1, 2, 4, 5, 6], where target is 8.

//Brute force method, where we will check every possible pair of numbers in the array and see if they sum to the target.
//Time complexity: O(n^2) 
//Space complexity: O(1)


List<int> bruteForceTwoSum(List<int> arr, int target){
  int n =  arr.length;
  for(int  i = 0; i<n; i++){
    for(int j = i+1; j<n; j++){
      if(arr[i] + arr[j] == target){
        print("Found pair: ${arr[i]} + ${arr[j]} = ${target}");
        return [arr[i], arr[j]];
      }
    }
  }
  print("No pair found that sums to ${target}");
  return[];
}

void main(){
  List<int> input = [1,2,3,4,5,6];
  int target = 8;
  print("input array is: ${input}");
  print("target is: ${target}");
  bruteForceTwoSum(input, target);
}
