bool isArrayPalindrome(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    if (nums[left] != nums[right]) {
      return false;
    }
    left++;
    right--;
  }
  return true;
}


void main(){
  List<int> sampleArray = [1,4,3,2,1];
  print(isArrayPalindrome(sampleArray));
}