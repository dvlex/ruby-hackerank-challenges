require_relative '../1-count-elements-greater-than-previous-average'
require 'rspec'

RSpec.describe '#countResponseTimeRegressions' do
  it 'it detects simple regressions' do
    expect(countResponseTimeRegressions([10, 20, 5, 30])).to eq(2)
  end

  it 'it detects no regressions if all are less than or equal' do
    expect(countResponseTimeRegressions([10, 9, 8, 7])).to eq(0)
  end

  it 'it handles a single element without errors' do
    expect(countResponseTimeRegressions([42])).to eq(0)
  end

  it 'it handles floating point averages correctly' do
    expect(countResponseTimeRegressions([10, 11, 12])).to eq(2)
  end
end
