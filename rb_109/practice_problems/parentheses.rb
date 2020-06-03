=begin
Source: https://launchschool.com/blog/live-session-beginning-ruby-part-5

Write a method that takes a String and returns a Boolean indicating whether this
String has a balanced set of parentheses.

Input(s):
- String

Output(s):
- Boolean

Data Structure(s):
- Array (to iterate through String argument characters)

Example(s):
balancer('hi') == true
balancer('(hi') == false
balancer('(hi)') == true
balancer(')hi(') == false

Rules:
  Explicit:
  - 

  Implicit:
  - "Balanced" parentheses must begin with '('. 
  - No parentheses in String argument is considered balanced.

Clarifications:
- How do we handle invalid inputs, e.g., empty Strings, nil, etc.?

Algorithm:
- Initialize variable score and set to Integer 0
- Loop through each character in argument String:
  - If character is '(', +1 score
  - Else if character is ')', -1 score
  - Return false if score == -1
- Return true
=end

def balancer(str)
  score = 0

  str.chars.each do |char|
    if char == '('
      score += 1 
    elsif char == ')'
      score -= 1
    end

    return false if score == -1
  end

  score == 0
end

p balancer('hi') == true
p balancer('(hi') == false
p balancer('(hi)') == true
p balancer(')hi(') == false
