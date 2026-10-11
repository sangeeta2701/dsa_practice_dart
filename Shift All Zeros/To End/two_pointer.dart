//Concept: Maintain a writeIndex starting at index 0. 
//Traverse the array: whenever a non-zero element is found, place it at writeIndex and increment writeIndex. 
//After reaching the end, fill the rest of the array with 0s
//Time Complexity: O(n)
//Space Complexity: O(1)

void shiftZerosToEndInPlace(List<int> nums){
  int writeIndex = 0;
  for(int i = 0; i<nums.length; i++){
    if(nums[i] != 0){
      nums[writeIndex] = nums[i];
      writeIndex++; 
    }
  }
  while(writeIndex<nums.length){
    nums[writeIndex] = 0;
    writeIndex++;
  }
}

void main(){
  List<int> input = [1, 8, 0, 9, 0, 3];
  shiftZerosToEndInPlace(input);
  print("zeros in end: $input");
}
