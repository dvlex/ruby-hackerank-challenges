#!/bin/ruby
# frozen_string_literal: true

require 'json'
require 'stringio'

# Merges overlapping high-definition video intervals from the HackerRank "Interview Preparation Kit" (Arrays - Easy) challenge
# https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/merge-high-definition-intervals/problem?isFullScreen=true
# @param intervals [Array<Array<Integer>>] an array of intervals where each interval is represented as a two-element array [start, end]
# @return [Array<Array<Integer>>] an array of merged intervals
# @example
#   mergeHighDefinitionIntervals([[1, 3], [2, 4], [5, 7], [6, 8]])
#   # => [[1, 4], [5, 8]]
def mergeHighDefinitionIntervals(intervals)
  return [] if intervals.empty?

  intervals.sort_by! { |interval| interval[0] }

  merged = []
  current_start, current_end = intervals[0]

  intervals.each do |start, end_time|
    if start <= current_end
      current_end = [current_end, end_time].max
    else
      merged << [current_start, current_end]
      current_start = start
      current_end = end_time
    end
  end

  merged << [current_start, current_end]
end
