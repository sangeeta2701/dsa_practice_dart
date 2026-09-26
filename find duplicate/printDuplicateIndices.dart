//Find and Print the Indices of Duplicate Values
void printDuplicateIndices(List<int> nums) {
  final Map<int, List<int>> indexMap = {};
  for (int i = 0; i < nums.length; i++) {
    int current = nums[i];

    if(indexMap.containsKey(current)){
      indexMap[current]!.add(i);
    }else{
      indexMap[current] = [i];
    }
  }
  indexMap.forEach((number, indices){
    if(indices.length>1){
      String formattedIndices = indices.join(',');
      print('$number occurs in index: $formattedIndices');
    }
  });
}

void main() {
  List<int> sampleArray = [4, 2, 7, 2, 4, 8, 4];
  printDuplicateIndices(sampleArray);
}
