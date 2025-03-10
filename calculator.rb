class Calculator
  def self.add(input_string)
    if input_string.start_with?('//')
      # Extract the delimiter from the first line
      delimiter = input_string[2..input_string.index("\n") - 1]
      # Remove the delimiter line from the input string
      numbers = input_string.split("\n", 2)[1].gsub("\n", delimiter)
      # Split the numbers by the custom delimiter and convert them to integers
      numbers_array = numbers.split(delimiter).map(&:to_i)

      # Check for negative numbers and raise an exception if any are found
      negatives = numbers_array.select { |num| num < 0 }
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

      # Return the sum of the numbers
      numbers_array.sum
    else
      # Handle default case (commas and newlines as delimiters)
      numbers_array = input_string.split(/[\n,]/).map(&:to_i)

      # Check for negative numbers and raise an exception if any are found
      negatives = numbers_array.select { |num| num < 0 }
      raise "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?

      # Return the sum of the numbers
      numbers_array.sum
    end
  end
end
