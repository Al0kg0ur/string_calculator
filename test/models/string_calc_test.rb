require 'test_helper'

class StringCalcTest < ActiveSupport::TestCase
  setup do
    @calculator = StringCalc.new
  end

  test "empty string should return 0" do
    assert_equal 0, @calculator.add("")
  end

  test "single number should return the number" do
    assert_equal 1, @calculator.add("1")
  end

  test "two numbers separated by comma should return sum" do
    assert_equal 6, @calculator.add("1,5")
  end

end
