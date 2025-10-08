#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countSubarraysWithSumAndMaxAtMost' function below.
#
# The function is expected to return a LONG_INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY nums
#  2. LONG_INTEGER k
#  3. LONG_INTEGER M
#

# def countSubarraysWithSumAndMaxAtMost(nums, k, m)
#   count = 0
#   n = nums.length

#   (0...n).each do |start_idx|
#     current_sum = 0
#     current_max = -Float::INFINITY

#     (start_idx...n).each do |end_idx|
#       current_sum += nums[end_idx]
#       current_max = [current_max, nums[end_idx]].max

#       break if current_sum > k || current_max > m

#       count += 1
#     end
#   end

#   count
# end
require 'debug'

def countSubarraysWithSumAndMaxAtMost(nums, k, m)
  return 0 unless nums.is_a?(Array)
  return 0 if nums == [0] || nums&.empty? || nums.nil? || !nums&.all? { |e| e.is_a?(Numeric) }
  return 0 unless k.is_a?(Numeric) && m.is_a?(Numeric)

  counter = 0
  last_index = nums.length - 1

  nums.each_with_index do |num, i|
    current_sum = 0
    current_max = -Float::INFINITY
    (i..last_index).each do |j|
      current_sum += nums[j]
      current_max = [current_max, nums[j]].max

      break if current_sum > k || current_max > m

      counter += 1 if current_sum == k && current_max <= m
    end
  end
  counter
end

arr = [1, 5] # 1
target_sum = 5
max_value = 5

puts countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)
