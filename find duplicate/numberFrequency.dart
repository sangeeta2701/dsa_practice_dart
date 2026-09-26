Map <int, int> countFrequencies(List<int> nums){
  final Map<int, int> frequencymap = {};
  for(int i = 0; i<nums.length; i++){
    int current = nums[i];
    if(frequencymap.containsKey(current)){
      frequencymap[current] = frequencymap[current]!+1;
    }else{
      frequencymap[current]=1;
    }
  }
  return frequencymap;
}

void main(){
  List<int> sampleArray = [1,2,8,2,4,3,8,4];
  Map<int,int> frequency = countFrequencies(sampleArray);
  print(frequency);
}