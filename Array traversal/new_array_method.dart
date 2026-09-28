//Question: Given an array of numbers, replace each even number with 2 of the same. 
//Input: [2,4,1,0,3] Output: [2,2,4,4,1,0,0,3]

//**************Setps to solve */
//Count how many even numbers are present
// New array size = original size + number of even elements
// Fill new array accordingly 

//Time complexity: O(n) where n is the size of the input array
//Space complexity: O(n) where n is the size of the new array

List<int> duplicagteEven(List<int> arr){
  int evenCount = 0;
  for(int i = 0; i <arr.length; i++){
    if(arr[i] % 2 == 0){
      evenCount++;
    }
  }

  List<int> result = List.filled(arr.length + evenCount, 0);

  int j = 0;
  for(int i = 0; i<arr.length; i++){
    if(arr[i] % 2 == 0){
      result[j++] = arr[i];
      result[j++] = arr[i];
    }else{
      result[j++] = arr[i];
    }
  }
  return result;
}

void main(){
  List<int> input = [2,4,1,0,3];
  print("input arraya is: ${input}");
  print("New array is: ${duplicagteEven(input)}");
}