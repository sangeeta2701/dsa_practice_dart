List<int> shiftZerosToStartNewList(List<int> nums){
  List<int> result = [];
  int zeroCount = 0;

  for(int i = 0; i<nums.length; i++){
    if(nums[i] == 0){
      zeroCount++;
    }
  }
  for(int  i = 0; i<zeroCount; i++){
    result.add(0);
  }
  for(int i = 0; i<nums.length;i++){
    if(nums[i] != 0){
      result.add(nums[i]);
    }
  }
  return result;
}

void main(){
  List<int> input = [1,0,8,3,0,7,0,9,0];
  List<int> output = shiftZerosToStartNewList(input);
  print("input array is ${input}");
  print("Out array is: $output");

}