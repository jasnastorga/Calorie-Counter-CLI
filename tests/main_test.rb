require 'minitest/autorun'
require_relative '/workspaces/Calorie-Counter-CLI/food'

#do not include in test file, main.rb contains 'gets' as this will force user input
#require_relative 'main'

class TestFood < Minitest::Test
  def test_food_inserting
    entry = Food.new("apple","fruit",150)
    assert_equal "apple", entry.name, "name creation failed"
    assert_equal "fruit", entry.type, "incorrect food type"
    assert_equal 150, entry.calories, "calorie creation failed"
  end
end
