require 'test_helper'

class StringCalcTest < ActiveSupport::TestCase
  setup do
    @calculator = StringCalc.new
  end

  test "empty string should return 0" do
    assert_equal 0, @calculator.add("")
  end

end
