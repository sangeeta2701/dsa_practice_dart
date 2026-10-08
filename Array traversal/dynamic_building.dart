//Question: Given an array of numbers, replace each even number with 2 of the same. 
//Input: [2,4,1,0,3] Output: [2,2,4,4,1,0,0,3]

//Concept: Create a new empty list. Iterate through the input array. If a number is even (val % 2 == 0), add it twice; otherwise, add it once.
//Time Complexity: O(n)
//Space Complexity: O(n)


List<int> duplicateEven(List<int> nums){
  List<int> result = [];
  for(int i = 0; i<nums.length; i++){
    int current = nums[i];

    if(current %2 == 0){
      result.add(current);
      result.add(current);
    }else{
      result.add(current);
    }
  }
  return result;
}


void main(){
  List<int> arr = [2,4,1,0,3];
  print("input array si $arr");
  List<int> output = duplicateEven(arr);
  print("The output array is $output");
}