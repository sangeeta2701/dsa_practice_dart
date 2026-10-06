/***
 * Optimal for Unsorted Arrays
 * Iterate through the array once. Maintain a lookup map to track seen elements. If an element has not been seen yet, record it in the map and add it to the unique output list.
 * Time Complexity: O(n)
 * Space Complexity: O(n)
 */

List<int> removeDuplicatesTracking(List<int> nums){
  final Map<int, bool> seen = {};
  final List<int> result = [];

  for(int i = 0; i<nums.length; i++){
    int current = nums[i];

    if(!seen.containsKey(current)){
      seen[current] = true;
      result.add(current);

    }
  }
  return result;
}

void main(){
  List<int> arr = [8,5,1,9,4,5,8,3,1,9,2];
  List<int> output =  removeDuplicatesTracking(arr);
  print("input arr is $arr");
  print("output arr is $output");
}