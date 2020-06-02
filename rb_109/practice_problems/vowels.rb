=begin
Source: https://launchschool.com/blog/live-session-beginning-ruby-part-5

Write a method that removes vowels from an Array of Strings.

Input(s):
- Array (of Strings)

Output(s):
- Array (of Strings)

Data Structure(s):
- Array

Examples:
remove_vowels(['red']) == ['rd']
remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']
remove_vowels([]) == []
remove_vowels(['']) == ['']

Rules:
  Explicit:
  - Each String element in output Array must lack vowels.
  Implicit:
  - Empty Array arguments must return empty Arrays.
  - Empty String elements will return empty String elements.

Clarifications:
- How do we handle invalid inputs?
- Does the output Array have to be a new Array, or the same Array passed in?

Algorithm:
- Initialize variable and assign to empty Array.
- Loop through elements in argument Array:
  - Remove the vowels in the element
  - Add the element to the new Array
- Return new Array
=end

def remove_vowels(arr)
  new_arr = []

  arr.each do |word|
    new_arr << word.gsub(/[aeiou]/, '')
  end

  new_arr
end

p remove_vowels(['red']) == ['rd']
p remove_vowels(['green', 'yellow', 'black', 'white']) == ['grn', 'yllw', 'blck', 'wht']
p remove_vowels([]) == []
p remove_vowels(['']) == ['']
