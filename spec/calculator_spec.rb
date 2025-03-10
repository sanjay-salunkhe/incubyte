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

    it 'returns the sum of numbers separated by newlines' do
      expect(Calculator.add("1\n2\n3")).to eq(6)
      expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it 'returns the sum of numbers separated by both commas and newlines' do
      expect(Calculator.add("1\n2,3")).to eq(6)
    end

    it 'handles multiple delimiters' do
      expect(Calculator.add("1,2\n3,4\n5")).to eq(15)
    end

    it 'returns 0 for a string with only delimiters' do
      expect(Calculator.add("\n,\n")).to eq(0)
    end
  end
end
