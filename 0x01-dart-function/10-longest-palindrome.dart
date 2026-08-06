import '9-palindrome.dart';

String longestPalindrome(String s) {
  var bestStart = -1;
  var bestLength = 0;

  for (var start = 0; start < s.length; start++) {
    for (var end = start + 3; end <= s.length; end++) {
      var candidate = s.substring(start, end);
      var length = end - start;

      if (length > bestLength && isPalindrome(candidate)) {
        bestLength = length;
        bestStart = start;
      }
    }
  }

  if (bestStart == -1) {
    return 'none';
  }

  return s.substring(bestStart, bestStart + bestLength);
}
