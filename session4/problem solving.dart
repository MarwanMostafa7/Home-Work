
  bool containsDuplicate(List<int> nums) {
    Set<int> seen = {};
    for (int number in nums){
    if (seen.contains(number)){
      return true;
      }
      seen.add(number);
    }
      return false;
  }

void main(){
    print(containsDuplicate([1,2,3,5]));
}