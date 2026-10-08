//Question: Given an array of numbers, replace each even number with 2 of the same. 
//Input: [2,4,1,0,3] Output: [2,2,4,4,1,0,0,3]

//**************Setps to solve */
//Count evens
//Start from back
//Fill from end to avoid shifting

//Time complexity: O(n) where n is the size of the input array
//Space complexity: O(n) where n is the size of the new array

List<int> duplicateEvensOptimized(List<int> arr){
  int evenCount = 0;
  for(int i = 0; i<arr.length; i++){
    if(arr[i]%2 == 0){
      evenCount++;
    }
  }
  
  int newSize = arr.length + evenCount;
  List<int> result = List.filled(newSize, 0);
  int i =  arr.length-1;
  int j = newSize-1;
  
  
  while(i>=0){
    if(arr[i] % 2 ==0){
      result[j--] = arr[i];
      result[j--] = arr[i];
    }else{
      result[j--] = arr[i];
    }
    i--;
  }
  return result;
    
}


void main(){
  List<int> input = [1,2,4,0,3,7,6];
  print("Input array is: ${input}");
  print("Result: ${duplicateEvensOptimized(input)}");
}