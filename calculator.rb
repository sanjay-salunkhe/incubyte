class Calculator
  def self.add(arguments)
    arguments.split(',').map(&:to_i).sum
  end
end
