class Calculator
  def self.add(input_string)
    if input_string.start_with?('//')
      # Extract the delimiter from the first line
      delimiter = input_string[2..input_string.index("\n") - 1]
      # Remove the delimiter line from the input string
      numbers = input_string.split("\n", 2)[1].gsub("\n", delimiter)
      # Split the numbers by the custom delimiter and sum them
      numbers.split(delimiter).map(&:to_i).sum
    else
      # Handle default case (commas and newlines as delimiters)
      input_string.split(/[\n,]/).map(&:to_i).sum
    end
  end
end
