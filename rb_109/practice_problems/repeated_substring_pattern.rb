=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_part_1.mp4

Give a non-empty String, check if it can be constructed by taking a substring
of it and appending multiple copies of the substring together. You may assume
the given String consists of lowercase English letters only.

Input(s):
- String

Output(s):
- Boolean

Example(s):
repeated_substring_pattern('abab') == true
repeated_substring_pattern('aba') == false
repeated_substring_pattern('aabaaba') == false
repeated_substring_pattern('abaababaab') == true
repeated_substring_pattern('abcabcabcabc') == true

Data Structure(s):
- String (substrings of original)

Rules:
  Explicit:
  - All arguments will be lowercase Strings.

  Implicit:
  - 

Clarifications:
- How do we handle invalid inputs, e.g. nil, empty String, etc.?

Algorithm:
- Initialize variable slice_idx and assign to Integer 0.
- Start a loop:
  - Break if slice_idx is equal to length of passed String
  - Initialize variable substring and set to String whose value is slice of
    passed String from index 0 to slice_idx.
  - Initialize variable num_repeats to Integer 1.
  - Start another loop:
    - Break if length of num_repeats * substring is greater than size of
      original String 
    - If num_repeats times substring is equal to the passed String, return true
    - Increment num_repeats by 1
  - Increment slice_idx by 1
- Return false
=end

def repeated_substring_pattern(str)
  slice_idx = 1

  loop do
    break if slice_idx == str.size
    substring = str[0, slice_idx]
    repeats = 1

    loop do
      repeated_substring = substring * repeats
      break if repeated_substring.size > str.size

      return true if repeated_substring == str 

      repeats += 1
    end

    slice_idx += 1
  end

  false
end

p repeated_substring_pattern('a') == false
p repeated_substring_pattern('abab') == true
p repeated_substring_pattern('aba') == false
p repeated_substring_pattern('aabaaba') == false
p repeated_substring_pattern('abaababaab') == true
p repeated_substring_pattern('abcabcabcabc') == true
