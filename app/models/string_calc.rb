class StringCalc < ApplicationRecord
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = extract_delimiter(numbers)
    numbers = extract_numbers(numbers, delimiter)

    sum_numbers(numbers)
  end

  private
	# Uses regex to extract the delimiter specified in the numbers string
  def extract_delimiter(numbers)
    numbers.match(/^\/\/(.)\n/) { |match| match[1] } || ","
  end

  def extract_numbers(numbers, delimiter)
    numbers.gsub(/^\/\/.\n/, "").split(/#{Regexp.escape(delimiter)}|\n/).map(&:to_i)
  end

  def sum_numbers(numbers)
  	# Check for negative numbers
    negatives = numbers.select { |num| num < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    numbers.sum
  end
end
