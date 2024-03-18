require 'minitest/autorun'
require_relative './food'
require_relative './main'

class TestCalculator < Minitest::Test
  def test_food_inserting
    entry = Food.new("apple","fruit","150")
    assert_equal "orange", entry.name
    assert_equal "fruit", entry.type
    assert_equal "150", entry.calories
  end
end
