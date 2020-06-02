=begin
Source: https://launchschool.com/blog/live-session-beginning-ruby-part-4

Reverse a String without using String#reverse

=== PEDAC ===
Input(s):
- String

Output(s):
- String

Data Structure(s):
- Array

Example(s):
reverse('a') == 'a'
reverse('hello') == 'olleh'
reverse('hi there') == 'ereht ih'
reverse('') == ''
reverse('California') == 'ainrofilaC'

Rules:
  Explicit:
  - Method must not use `String#reverse` method
  - Non-alphabetical characters get reversed as well.
  Implicit:
  - Character case is preserved.
  - Empty Strings return empty Strings

Clarifications:
- How do we handle invalid inputs like nil or non-Strings?
- Does the String need to be a new String object or the old String object?

Algorithm:
- Initialize empty String variable reversed_str to ''
- Loop through Array of characters in passed argument:
  - Pop last element in the Array and add to reversed_str
- Return reversed_str
=end

def reverse(str)
  reversed_str = ''
  str_arr = str.chars

  str_arr.size.times { |_| reversed_str << str_arr.pop }

  reversed_str
end

p reverse('a') == 'a'
p reverse('hello') == 'olleh'
p reverse('hi there') == 'ereht ih'
p reverse('') == ''
p reverse('California') == 'ainrofilaC'
