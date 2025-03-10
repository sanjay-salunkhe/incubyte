class Calculator
  def self.add(arguments)
    arguments.split(/[\n,]/).map(&:to_i).sum
  end
end
