class StringCalc < ApplicationRecord
  def add(numbers)
    # Check if the numbers string is empty
    return 0 if numbers.empty?

    # Initialise delimiter and numbers based on the input format
    delimiter = numbers.match(/^\/\/(.)\n/) { |match| match[1] } || ","

    # Split numbers based on delimiter and new line characters
    numbers_array = numbers.split(/#{delimiter}|\n/)

    # Convert each part of the array to integer
    integers = numbers_array.map(&:to_i)

    # Check for negative numbers
    negative_numbers = integers.select { |num| num < 0 }
    if negative_numbers.any?
      raise "negative numbers not allowed #{negative_numbers.join(",")}"
    end

    # Calculate the sum of the numbers
    integers.sum
  end
end
