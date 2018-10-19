# RubyKataProblem

Problem: http://codekata.com/kata/kata06-anagrams/

### Code contained in this repository
anagramCounter.rb contains the logic to output anagrams of input files
test.txt contains a small list of words to run for testing
words.txt contains a large set of words to run for testing

### How to run
to change input file, replace the file name at the top of anagramCounter.rb
run ruby anagramCounter.rb

### How it works
- Read through each line in the input file (line)
- sort the string in the line
- use this sorted string as a key to look up in the hashtable. 
- Hashtable contains sorted string as key and an array of strings from the file input that when sorted are the same as this key.
- If this string's sorted order is a key in the hashtable, add the original string from file into the array of words
- Iterate through the hashtable and print the strings in the value array of each key in the hashtable
- Keep count of the keys that have values with arrays with more than one word (means found anagrams in the input file)
-print to user the number of words in the file and the number of anagrams found

Complexity
n = number of words in the input file
m = length of the longest word in the input file

Space complexity
O(n) - Hashtable

Time Complexity
O(n log m) - sorting each string O(m log m) + iterating through the file O(n) + iterating through hashtable O(n)
