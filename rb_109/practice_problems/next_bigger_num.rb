=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_2.mp4

Create a method that takes a positive Integer and returns the next bigger
number formed by the same digits. If no bigger number can be composed using
those digits, return -1.

Input(s):
- Integer 

Output(s):
- Integer

Data Structure(s):
- String (for comparison)

Example(s) / Test Case(s):
next_bigger_num(12) == 21
next_bigger_num(513) == 531
next_bigger_num(2017) == 2071
next_bigger_num(9) == -1
next_bigger_num(111) == -1
next_bigger_num(531) == -1
next_bigger_num(123456789) == 123456798
next_bigger_num(2071) == 2107

Clarifications:
- How should the method handle invalid inputs?

Rules:
  Explicit:
  - If no bigger number can be formed, return -1.

  Implicit:
  - 

Algorithm:
- Initialize variable int_arr and assign to Array of digits from argument Array
- Initialize variable int_arr_sorted and assign to (descending) sorted version
  of int_arr
- Return -1 if int_arr is equal to int_arr_sorted
- Initialize variable num and assign to Argument Integer + 1
- Start a loop:
  - Initialize variable num_arr_sorted and assign to descending sorted Array
    version of variable num
  - Break loop if num_arr_sorted is equal to int_arr_sorted
  - Increment num
- Return num
=end

def next_bigger_num(int)
  int_arr = int.to_s.split('')
  int_arr_sorted = int_arr.sort { |a, b| b <=> a }
  return -1 if int_arr == int_arr_sorted

  num = int + 1
  loop do
    num_arr_sorted = num.to_s.split('').sort { |m, n| n <=> m }
    break if num_arr_sorted == int_arr_sorted
    num += 1
  end

  num
end

p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(9) == -1
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
p next_bigger_num(2071) == 2107
