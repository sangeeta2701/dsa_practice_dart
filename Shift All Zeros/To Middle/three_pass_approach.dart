//Concept: Separate non-zero elements into a list, count zeros, and 
//assemble the result by placing half of the non-zeros, followed by all zeros, 
//followed by the remaining non-zeros.
//Time Complexity: O(n)
//Space Complexity: O(n)


List<int> shiftZerosToMiddle(List<int> nums){
  List<int> nonZeros = [];
  int zeroCount = 0;

  for(int i = 0; i<nums.length; i++){
    if(nums[i] == 0){
      zeroCount++;

    }else{
      nonZeros.add(nums[i]);
    }
  }
  List<int> result = [];
  int halfNonZeroCount = nonZeros.length ~/2;

  for(int i = 0; i<halfNonZeroCount; i++){
    result.add(nonZeros[i]);
  }
  for(int i = 0; i<zeroCount; i++){
    result.add(0);
  }
  for(int i = halfNonZeroCount; i<nonZeros.length;i++){
    result.add(nonZeros[i]);
  }

  return result;
}


void main(){
  List<int> input = [0,1,9,0,7,0,5,0];
  List<int> output = shiftZerosToMiddle(input);
  print("the outputt array is: $output");
}