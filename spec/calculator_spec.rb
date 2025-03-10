require 'rspec'
require_relative '../calculator.rb'
RSpec.describe Calculator do
  it 'is expected to return sum of all numbers' do
    sum = Calculator.add("0")
    expect(sum).to eq(0)
  end
end
