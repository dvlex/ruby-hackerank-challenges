#!/bin/ruby
# frozen_string_literal: true

require 'json'
require 'stringio'

# Calculates the number of times the element[i] is greater than the average of all previous elements
# from the HackerRank "Interview Preparation Kit" (Arrays - Easy) challenge
# https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/count-elements-greater-than-previous-average/problem?isFullScreen=true
# @param responseTimes [Array<Integer>] an array of integers representing response times
# @return [Integer] the count of elements greater than the average of all previous elements
def countResponseTimeRegressions(responseTimes)
  responseTimes.each_with_index.drop(1).count do |time, i|
    time > responseTimes.first(i).sum / responseTimes.first(i).size
  end
end
