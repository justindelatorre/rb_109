=begin
Source: http://dkq85ftleqhzg.cloudfront.net/watch_others_code/watch_others_code_part_3.mp4

The maximum sum subarray problem consists in finding the maximum sum of a
contiguous subsequence in an Array of Integers. The easy case is when the Array
is made up of only positive numbers and the maximum sum is the sum of the whole
Array. If the Array is made up of only negative numbers, return 0 instead. An
empty ARray is considered to have a greatest sum of 0. Note that the empty
Array is also a valid subarray.

Input(s):
- Array (of Integers)

Output(s):
- Integer

Data Structure(s):
- N/A

Example(s) / Test Case(s):
max_sequence([]) == 0
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
max_sequence([11]) == 11
max_sequence([-32]) == 0
max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12

Clarifications:
- How should the method handle invalid arguments?

Rules:
  Explicit:
  - Sum must come from contiguous elements in a subarray from the original
    Array.
  - Empty Array argument returns 0.
  - Array with all negative Integers returns 0.

  Implicit:
  - 

Algorithm:
- Guard case: Return 0 if Array argument is empty or if all elements < 0 
- Initialize variable sum and assign to Integer 0
- Create Array containing all subarrays of argument Array
- For each subarray:
  - Calculate the sum of the elements
  - If sum of those elements is greater than current value of sum, change sum
    to sum of current subarray
- Return sum
=end

def get_sub_arrays(arr)
  sub_arrs = []
  (0..(arr.size - 1)).each do |index1|
    (index1..(arr.size - 1)).each do |index2|
      sub_arrs << arr[index1..index2]
    end
  end

  sub_arrs
end

def max_sequence(arr)
  return 0 if arr == [] || arr.all? { |n| n < 0 }

  sum = 0
  sub_arrs = get_sub_arrays(arr)

  sub_arrs.each { |sub_arr| sum = sub_arr.sum if sub_arr.sum >= sum }

  sum
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
