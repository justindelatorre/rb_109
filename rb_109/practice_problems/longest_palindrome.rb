=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code5.mp4

Write a method that finds the length of the longest substring in the given
String that is the same in reverse. If the length of the argument String is 0,
the return value must be 0.

Input(s):
- String

Output(s):
- Integer

Data Structure(s):
- Array, to hold substrings

Example(s) / Test Case(s):
longest_palindrome('a') == 1
longest_palindrome('aa') == 2
longest_palindrome('baa') == 2
longest_palindrome('aab') == 2
longest_palindrome('baabcd') == 4
longest_palindrome('baablkj12345432133d') == 9
longest_palindrome('') == 0

Clarifications:
- How should the method handle invalid inputs?
- Does capitalization matter?

Rules:
  Explicit:
  - Empty String arguments should return 0.

  Implicit:
  - Capitalization doesn't matter.

Algorithm:
- Initialize variable longest_substr and assign to empty String
- Initialize variable substr_arr and assign to all substrings that can be
  created from argument String
- Loop through substr_arr:
  - If current substring is a palindrome (i.e. equal to itself in reverse) and
    is longer than current longest_substr, re-assign longest_substr to the
    current substring
- Return size of current value of longest_substr
=end

def get_substr(str)
  substr = []

  (0..(str.size)).each do |idx1|
    (1..(str.size)).each do |idx2|
      substr << str[idx1..idx2]
    end
  end

  substr.uniq
end 

def longest_palindrome(str)
  longest_substr = ''

  substr_arr = get_substr(str)
  
  substr_arr.each do |substr|
    if substr.reverse == substr && substr.size > longest_substr.size
      longest_substr = substr
    end
  end

  longest_substr.size
end

p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baablkj12345432133d') == 9
p longest_palindrome('') == 0
