String longestUniqueSubstring(String str) {
  var seen = <String, int>{};
  var left = 0;
  var bestStart = 0;
  var bestLength = 0;

  for (var right = 0; right < str.length; right++) {
    var char = str[right];

    if (seen.containsKey(char) && seen[char]! >= left) {
      left = seen[char]! + 1;
    }

    seen[char] = right;

    var currentLength = right - left + 1;
    if (currentLength > bestLength) {
      bestLength = currentLength;
      bestStart = left;
    }
  }

  return str.substring(bestStart, bestStart + bestLength);
}