=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_part_4.mp4

Write a method that takes two Strings and returns a Boolean stating whether
both Strings contain a common substring. We only care about substrings that are
longer than one letter long.

Input(s):
- (2) Strings

Output(s):
- Boolean

Data Structure(s):
- Array, to hold substrings
- String (of substring)

Example(s) / Test Case(s):
substring_test('Something', 'Fun') == false
substring_test('Something', 'Home') == true
substring_test('Something', '') == false
substring_test('', 'Something') == false
substring_test('BANANA', 'banana') == true
substring_test('test', 'lllt') == false
substring_test('', '') == false
substring_test('1234567', '541265') == true
substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true

Clarifications:
- How should the method handle invalid inputs? 

Rules:
  Explicit:
  - A substring counts as common if the substring is longer than two
    characters.

  Implicit:
  - Empty Strings do not count as common substrings.
  - Capitalization doesn't matter.

Algorithm:
- Initialize a variable common_substr and assign to an empty Array
- Initialize a variable substr_arr and assign it to the return value of a
  method extracting all possible two-or-more character substrings from first
  argument (downcased)
- Loop through substr_arr:
  - Check if each element is present in the (downcased) second argument
    - If so, add to common_substr
- Return result of checking if length common_substr is greater than 0
=end

def get_substrings(str)
  substr = []

  (0..str.size).each do |idx1|
    (1..str.size).each do |idx2|
      substr << str[idx1..idx2].downcase
    end
  end

  substr.uniq.select { |s| s.size > 1 }
end

def substring_test(str1, str2)
  substr_arr = get_substrings(str1)

  common_substr = substr_arr.select do |substr|
                    str2.downcase.include?(substr)
                  end

  !common_substr.size.zero?
end

p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrocious') == true
