require 'rspec'
require_relative '../calculator'
RSpec.describe Calculator do
  describe '.add' do
    it 'is expected to return sum of all numbers' do
      sum = Calculator.add('0')
      expect(sum).to eq(0)
    end

    it 'is expected to return 0 when string is empty' do
      sum = Calculator.add('')
      expect(sum).to eq(0)
    end

    it 'is expected to return sum of all numbers' do
      sum = Calculator.add('1,2,3,4,5,9')
      expect(sum).to eq(24)
    end
  end
end
