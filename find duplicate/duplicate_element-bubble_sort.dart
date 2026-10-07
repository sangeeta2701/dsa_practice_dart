void bubbleSort(List<int>arr){
  int n = arr.length;
  for(int i = 0; i<n-1; i++){
    for(int j = 0; j <n-i-1; j++){
      if(arr[j]> arr[j+1]){
        int temp = arr[j];
        arr[j] = arr[j+1];
        arr[j+1] = temp;
      }
    }
  }
}

bool hasDuplicate(List<int>arr){
  bubbleSort(arr);
  print("sorthed array: ${arr}");
  for(int i = 0; i < arr.length-1; i++){
    if(arr[i] == arr[i+1]){
      return true;
    }
  }
  return false;
} 

void main(){
  List<int> arr = [1,2,3,4,2,5];
  if(hasDuplicate(arr)){
    print("The array has duplicate element");
  }else{
    print("The array doesn't have duplicate element");
  }

}