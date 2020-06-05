=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_part_4.mp4

Write a method that takes two Strings and returns true if a portion of the
first String can be rearranged to match the second. Otherwise, the method
should return false.

Input(s):
- (2) Strings

Output(s):
- Boolean

Data Structure(s):
- Array, to store individual characters

Example(s) / Test Case(s):
scramble('javaass', 'jjss') == false
scramble('rkgodlw', 'world') == true
scramble('cedewaraaossoqqyt', 'codewars') == true
scramble('katas', 'steak') == false
scramble('scriptjava', 'javascript') == true
scramble('scriptingjava', 'javascript') == true

Clarifications:
- How should the method handle invalid input?
- Will the first argument always be as long or longer than the second?
- Does capitalization matter?

Rules:
  Explicit:
  - Substrings should be more than one letter long.

  Implicit:
  - The first argument will always be as long or longer than the second.
  - The examples suggest that capitalization doesn't matter.

Algorithm:
- Initialize variable arr1 and assign to first String converted to character
  Array
- Initialize variable arr2 and assign to second String converted to character
  Array
- Loop through each element in arr1:
  - If the element is found in arr2, delete earliest instance of it in arr2
- Return result of seeing if arr2 is empty
  
=end

def scramble(str1, str2)
  arr1 = str1.chars
  arr2 = str2.chars

  arr1.each do |e|
    if arr2.include?(e)
      arr2.delete_at(arr2.index(e))
    else
      next
    end
  end

  arr2.empty?
end

p scramble('javaass', 'jjss') == false
p scramble('rkgodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', 'javascript') == true
