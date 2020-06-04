=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_6.mp4

Write a method that takes an Array of Integers and finds the index N where the
sum of the Integers to the left of N is equal to the sum of the Integers to the
right of N. If there is no index that would make this happen, return -1.

Input(s):
- Array (of Integers)

Output(s):
- Integer (representing an index)

Data Structure(s):
- N/A (will use existing Array argument)

Example(s) / Test Case(s):
find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
find_even_index([1, 100, 50, -51, 1, 1]) == 1
find_even_index([1, 2, 3, 4, 5, 6]) == -1
find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

Clarifications:
- How should the method handle invalid inputs?

Rules:
  Explicit:
  - Arrays that can't be balanced should return -1.

  Implicit:
  - Negative Integer elements are allowed.
  - Values to the "left" of position 0 or "right" of position -1 equal 0.

Algorithm:
- Initialize variable idx and assign to Integer -1
- Start a loop from 0 to size of argument Array:
  - Compare the two Arrays created by splitting the argument array at current number
  - If the sums of both Arrays are equal, set idx to current number and break
- Return idx
=end

def find_even_index(arr)
  idx = -1

  0.upto(arr.size - 1) do |n|
    if arr[0, n].sum == arr[(n + 1), arr.size].sum
      idx = n
      break
    end
  end

  idx
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50, -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3
