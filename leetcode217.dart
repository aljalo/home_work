bool isDuplicate(List<int> nums) {
  Set<int> duplicated = {};
  for (int num in nums) {
    if (duplicated.contains(num)) {
      return true;
    }
    duplicated.add(num);
  }
  return false;
}

void main() {
  List<int> num = [1, 2, 3, 4, 4];
  print(isDuplicate(num));
}

//bool isDuplicate(Lisy<int> nums) {
// if(nums.length == nums.toSet().length){
//   return false;
// }else{
//   return true;
// }
// }
