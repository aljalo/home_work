/*
Find the Longest Word
Write a function that takes a sentence as input and returns the longest word in the sentence.
If multiple words have the same longest length, return the first one that appears.
*/
String findLongestWord(String sentence) {
  List<String> words = sentence.split('');
  String longest = words[0];

  for (String word in words) {
    if (word.length > longest.length) {
      longest = word;
    }
  }
  return longest;
}

void main() {
  print(findLongestWord('Hello my name is Ali'));
}
