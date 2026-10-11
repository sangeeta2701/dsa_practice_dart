List<int> shiftZerosToEndNewList(List<int> nums){
  List<int> result = [];
  int zeroCount = 0;
  
  for(int i = 0; i<nums.length; i++){
    if(nums[i] != 0){
      result.add(nums[i]);
      
    }else{
      zeroCount++;
    }
  }
  while(zeroCount>0){
    result.add(0);
    zeroCount--;
  }
  return result;
}

void main(){
  List<int> nums = [0,5,7,0,6,0,2,0,7];
  List<int> output = shiftZerosToEndNewList(nums);
  print("Nrw array: $output");
  
}