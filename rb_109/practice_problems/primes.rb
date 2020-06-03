=begin
Source: https://launchschool.com/blog/live-session-beginning-ruby-part-5

Write a method that takes two numbers. It should print out all primes between
the two numbers. Don't use Ruby's prime class.

Input(s):
- (2) Integers

Output(s):
- Console output

Data Structure(s):
- N/A, but can use a Range object

Example(s):
find_prime(3, 10) # => 3, 5, 7

Clarifications:
- How do we handle unexpected inputs?
  - Zero or negative numbers?
  - Second number smaller than first?
  - Non-Integer arguments?

Rules:
  Explicit:
  - 

  Implicit:
  - Prime numbers have no other factors besides 1 and that number.
  - 

Algorithm:
- Initialize variable range and set it to Range object between first and second
  arguments, inclusive.
- Initialize variable primes and set it to empty Array
- Loop through each element of range:
  - Initialize variable factor_count and set to 0
  - Loop through each number between 1 and up to element:
    - If element divided by number is zero, +1 factor_count
  - If factor_count > 2, add element to primes Array
- Print primes to the console
=end

def find_prime(first, last)
  range = (first..last)
  primes = []

  range.each do |element|
    factor_count = 0
    1.upto(element) { |n| factor_count += 1 if (element % n).zero? }

    primes << element if factor_count <= 2
  end

  puts primes
end

find_prime(3, 10) # => 3, 5, 7
find_prime(5, 15) # => 5, 7, 11, 13
