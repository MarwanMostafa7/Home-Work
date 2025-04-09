class Solution {
  String number;
  Solution(this.number);

  bool isPalindrome() {
    String cleaned = number.toLowerCase();
    cleaned = cleaned.replaceAll(RegExp(r'[^a-z0-9]'), '');
    return cleaned == cleaned.split('').reversed.join('');
  }
}

void main() {
  var test1 = Solution("A man, a plan, a canal: Panama");
  print(test1.isPalindrome()); 

  var test2 = Solution("race a car");
  print(test2.isPalindrome()); 

  var test3 = Solution(">");
  print(test3.isPalindrome());
}
