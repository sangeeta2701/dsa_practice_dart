//Reverse an array using a new array
//Time complexity: o(n)
//Space complexity: o(n)
//Input: [1,2,3,4,5] Output: [5,4,3,2,1] 


List<int> reverseUsingNewArray(List<int> arr){
  int n = arr.length;
  List<int> result = List.filled(n, 0);
  int j = 0;

  for(int i = n-1; i>= 0; i--){
    result[j++] = arr[i];
  }
  return result;
}


void main(){
  List<int> input = [1,2,3,4,5];
  print("input array is: ${input}");
  print("Revere array is: ${reverseUsingNewArray(input)}");
}