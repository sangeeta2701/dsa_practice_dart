// Brute fore: Compare every element with every other element and check if they are same or not.
// If they are same then return true else return false.

bool hasDuplicate(List<int> arr){
  for(int i = 0; i<arr.length; i++){
    for(int j = i+1; j<arr.length; j++){
      if(arr[i] == arr[j]){
        return true;
      }

    }
  }
  return false;
}

void main(){
  List<int> arr1 = [1,2,3,4,2];
  print(hasDuplicate(arr1));

}
