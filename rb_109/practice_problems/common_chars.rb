=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_part_1.mp4

Given an Array of Strings made only from lowercase letters, return an Array of
all characters that show up in all Strings within the given Array (including
duplicated). For example, if a character occurs 3 times in all Strings but not
4 times, you need to include that character 3 times in the final answer.

Input(s):
- Array (of lowercase Strings)

Output(s):
- Array (of character Strings)

Data Structure(s):
- Array
- String

Example(s) / Test Case(s):
common_chars(['bella', 'label', 'roller']) == ['e', 'l', 'l']
common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'yyyzzz']) == []

Clarifications:
- How should the method handle invalid inputs?

Rules:
  Explicit:
  - Characters repeating more than once in all String elements should be
    included the number of times each repeats.

  Implicit:
  - Argument Arrays with no repeating characters in all words should return an
    empty Array.

Algorithm:
- Create a copy of the argument Array
- Initialize variable first_word_chars and set to Array of characters from first
  element in Array copy
- Loop through first_word_chars:
  - Select character if it appears in every element in Array copy
  - Delete earliest instance of current character
- Return Array of selected characters
=end

def common_chars(arr)
  arr = arr.map { |word| word.dup }
  first_word_chars = arr[0].chars

  first_word_chars.select do |char|
    arr.all? { |string| string.sub!(char, '') }
  end
end

arr = ['bella', 'label', 'roller']

p common_chars(['a', 'a', 'a']) == ['a']
p common_chars(arr) == ['e', 'l', 'l']
p common_chars(['cool', 'lock', 'cook']) == ['c', 'o']
p common_chars(['hello', 'goodbye', 'booya', 'random']) == ['o']
p common_chars(['aabbaaaa', 'ccdddddd', 'eeffee', 'yyyzzz']) == []
