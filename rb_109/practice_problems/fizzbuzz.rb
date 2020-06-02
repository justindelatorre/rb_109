=begin
Source: https://launchschool.com/blog/live-session-beginning-ruby-part-4

Implement a method called fizzbuzz that takes two Integers as an argument and
for each number in the range between them (inclusive), prints the following:
- 'Fizz' if the number is divisible by 3
- 'Buzz' if the number is divisible by 5
- 'FizzBuzz' if the number is divisible by 3 and 5
- The number if the number is divisible by neither

Input(s):
- (2) Integers

Output(s):
- Console outputs:
  - 'Fizz' if number is divisible by 3
  - 'Buzz' if number is divisible by 5
  - 'FizzBuzz' if number is divisible by 15
  - Current number if N/A

Data Structures:
- N/A

Example(s):
fizzbuzz(1, 15)
# => 1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14, 'FizzBuzz'

Rules:
  Explicit:
  - Console output rules above

  Implicit:
  -

Clarifications:
- How do we handle invalid inputs?
  - Non-Integers
  - Too few arguments
  - Second argument smaller than first

Algorithm:
- Create range starting with first argument until second argument, inclusive
- Loop through every number in the range:
  - If the number is divisible by 3 AND 5, print FizzBuzz
  - Else if the number is divisible by 3, print Fizz
  - Else if the number is divisible by 5, print Buzz
  - Else, print the number
=end

def fizzbuzz(start, finish)
  range = (start..finish)

  range.each do |num|
    if (num % 3).zero? && (num % 5).zero?
      puts 'FizzBuzz'
    elsif (num % 3).zero?
      puts 'Fizz'
    elsif (num % 5).zero?
      puts 'Buzz'
    else
      puts num
    end
  end
end

fizzbuzz(1, 15)
