require_relative '../2_merge_and_sort_intervals'
require 'rspec'

RSpec.describe 'mergeHighDefinitionIntervals' do
  it 'merges overlapping intervals' do
    intervals = [[1, 3], [2, 4], [5, 7], [6, 8]]
    expected = [[1, 4], [5, 8]]
    expect(mergeHighDefinitionIntervals(intervals)).to eq(expected)
  end

  it 'returns an empty array for no intervals' do
    expect(mergeHighDefinitionIntervals([])).to eq([])
  end

  it 'handles a single interval' do
    expect(mergeHighDefinitionIntervals([[1, 3]])).to eq([[1, 3]])
  end
end
