require_relative '../3_subarrays_given_sum_bounded_maximum'
require 'rspec'

RSpec.describe 'countSubarraysWithSumAndMaxAtMost' do
  it 'counts subarrays with sum and bounded maximum' do
    arr = [2, -1, 2, 1, -2, 3]
    target_sum = 3
    max_value = 2
    expected = 2
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'returns 0 when no valid subarrays exist' do
    arr = [-1, 2, 1, -2, 3]
    target_sum = 3
    max_value = 2
    expected = 1
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'returns 0 when no valid subarrays exist' do
    arr = [0]
    target_sum = 0
    max_value = 0
    expected = 0
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'returns 0 when no valid subarrays exist' do
    arr = [1, 5]
    target_sum = 5
    max_value = 5
    expected = 1
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles an empty array' do
    arr = []
    target_sum = 5
    max_value = 4
    expected = 0
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = [3]
    target_sum = 3
    max_value = 4
    expected = 1
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = [-1]
    target_sum = -1
    max_value = 0
    expected = 1
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = nil
    target_sum = 3
    max_value = 4
    expected = 0
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = 'hello'
    target_sum = 3
    max_value = 4
    expected = 0
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = %w[1 5]
    target_sum = -1
    max_value = 0
    expected = 0
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = { a: 1, b: 5 }
    target_sum = -1
    max_value = 0
    expected = 0
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = [-1]
    target_sum = -1
    max_value = 0
    expected = 1
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'handles a single-element array' do
    arr = [-1]
    target_sum = 'hello'
    max_value = 0
    expected = 0
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'falla cuando el subarray tiene suma igual pero max supera m' do
    arr = [1, 3]
    target_sum = 4
    max_value = 2
    expected = 0 # porque el max es 3 > 2
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'falla cuando hay múltiples subarrays con suma k pero max == m' do
    arr = [1, 2, 1, 2]
    target_sum = 3
    max_value = 2
    expected = 3 # [1,2] y [2,1]
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end

  it 'falla cuando hay múltiples subarrays con suma k pero max == m' do
    arr = [1, 2, [1, 2], 2]
    target_sum = 3
    max_value = 2
    expected = 0 # [1,2] y [2,1]
    expect(countSubarraysWithSumAndMaxAtMost(arr, target_sum, max_value)).to eq(expected)
  end
end
