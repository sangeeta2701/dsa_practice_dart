//Concept: Traverse the array backwards starting from the last index (nums.length - 1). 
//Copy non-zero elements to a writeIndex that also moves backward
//. Finally, fill the remaining front indices with 0s
//Time Complexity: O(n)
//Space Complexity: O(1)




void shiftZerosToStart(List<int> nums){
  int writeIndex = nums.length-1;
  for(int i = nums.length-1; i>=0; i--){
    if(nums[i] !=0){
        nums[writeIndex] = nums[i];
        writeIndex--;
    }
  }
  while(writeIndex>=0){
    nums[writeIndex] = 0;
    writeIndex--;

  }


}
  void main(){
    List<int> input = [1, 8, 0, 9, 0, 3];
    shiftZerosToStart(input);
    print("output array is: $input");
  }