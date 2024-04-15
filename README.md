# README
Instructions for Reviewing String Calculator Implementation

Files to Review:
1. Model File (string_calc.rb):
	This file contains the implementation of the StringCalculator class with an add method.
	The add method takes a string of comma-separated numbers, supports custom delimiters, and performs the addition operation.

	Ensure the add method handles various input scenarios correctly:
		a. Handles an empty string input by returning 0.
		b. Sums up comma-separated numbers correctly.
		c. Supports new line characters between numbers ("\n").
		d. Detects and uses custom delimiters specified at the beginning of the input string (e.g., "//;\n1;2").
		e. Throws an exception with a meaningful error message if negative numbers are present in the input.

2. Test File (string_calc_test.rb):
	This test file contains unit tests for the StringCalculator class to ensure correct behavior, especially with different delimiters.

Key Features to Verify:

	1. Handling Delimiters:
		a. Check that the extract_delimiter method correctly identifies custom delimiters.
		b. Verify that the extract_numbers method removes the delimiter specification and splits the string into numbers.
	2. Error Handling:
		a. Ensure that the add method raises an exception if any negative numbers are present, displaying the negative numbers in the error message.
	3. Summation:
		b. Confirm that the sum_numbers method calculates the correct sum of the numbers extracted from the input string.

Input:
	calculator = StringCalc.new
 	result = calculator.add("1,2,3")

Output: 6
