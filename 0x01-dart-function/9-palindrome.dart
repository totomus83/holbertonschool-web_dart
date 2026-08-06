bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }

  var reversed = String.fromCharCodes(s.runes.toList().reversed);
  return s == reversed;
}
