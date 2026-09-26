//List Which Unique Numbers Have Duplicates


List<int> getDuplicateNumbers(List<int> nums){
  final Map<int, bool> seen ={};
  final Map<int, bool> duplicateFound ={};
  final List<int> duplicateList = [];

  for (int i = 0; i<nums.length; i++){
    int current = nums[i];

    if(seen.containsKey(current)){
      if(!duplicateFound.containsKey(current)){
        duplicateFound[current] = true;
        duplicateList.add(current);
      }
    }else{
      seen[current] = true;
    }
  }
  return duplicateList;
}

void main(){
  List<int> sampleArray = [4,2,7,2,4,6,8];
  List<int> duplicates = getDuplicateNumbers(sampleArray);
  print(duplicates);
}