/*** 
 Instead of managing two explicit pointers, run a single for loop up to nums.length ~/ 2 (integer division) and calculate the opposite mirror index dynamically as nums.length - 1 - i.
 Time Complexity: O(n) — Runs exactly $n/2$ iterations.
 Space Complexity: O(1) — In-place mutation.
 ***/

 void reverseHalfIteration(List<int> nums){
  int length =  nums.length;
  int halfLength =  length ~/2;

  for(int i = 0; i<halfLength; i++){
    int oppositeIndex = length-1-i;


    int temp = nums[i];
    nums[i]= nums[oppositeIndex];
    nums[oppositeIndex] = temp;
  }
 }

 void main(){
  List<int> sampleArray = [1,2,3,4,5,6,7,8,9];
  reverseHalfIteration(sampleArray);
  print("The reversed array is: $sampleArray");
 }