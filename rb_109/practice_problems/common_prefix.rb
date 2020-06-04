=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_part_3.mp4

Write a method to find the longest common prefix string amongst an Array of
Strings. If there is no common prefix, return an empty String.

Input(s):
- Array (of Strings)

Output(s):
- String

Data Structure(s):
- Strings (substrings of argument String)

Example(s) / Test Case(s):
common_prefix(['flower', 'flow', 'flight']) == 'fl'
common_prefix(['dog', 'racecar', 'car']) == ''
common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
common_prefix(['throne', 'throne']) == 'throne'
common_prefix(['throne', 'dungeon']) == ''

Clarifications:
- How should the method handle invalid inputs?
- How should the method handle uppercase characters?

Rules:
  Explicit:
  - Return '' if there is no common prefix among Array elements.

  Implicit:
  - Assume all Array elements will be lowercase.

Algorithm:
- Initialize variable longest_str and assign to ''
- Initialize variable substr_arr and assign to all substrings from the first element
- Loop through substr_arr:
  - If current substring is in all elements in argument Array and its length is
    greater than the length of longest_str, re-assign longest_str to that
    substring
- Return longest_str
=end

def get_substr_arr(str)
  substr_arr = []

  (1..(str.size - 1)).each do |idx2|
    substr_arr << str[0..idx2]
  end

  substr_arr.uniq
end

def common_prefix(arr)
  longest_str = ''
  substr_arr = get_substr_arr(arr[0])

  substr_arr.each do |substr|
    longest_str = substr if arr.all? { |e| e.include?(substr) } &&
    substr.size > longest_str.size
  end

  longest_str
end

p common_prefix(['flower', 'flow', 'flight']) == 'fl'
p common_prefix(['dog', 'racecar', 'car']) == ''
p common_prefix(['interspecies', 'interstellar', 'interstate']) == 'inters'
p common_prefix(['throne', 'throne']) == 'throne'
p common_prefix(['throne', 'dungeon']) == ''
