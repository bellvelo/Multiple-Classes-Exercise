require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class RiverTest < Minitest::Test

def setup
  @fish_stock = ["Trout", "Bass", "Salmon", "Pollok", "Cod"]
  @river = River.new("Clyde", @fish_stock)
  @bear = Bear.new("Rufus", "Badass",)
end

def test_whats_the_rivers_name
  @river.name
  assert_equal("Clyde", @river.name)
end

def test_what_fish_are_in_the_river
  @river.fish_register#(@fish_stock)
  assert_equal(@fish_stock, @river.fish_register)#(@fish_stock))
end

def test_fish_stock_count
  @river.fishes_in_the_river
  assert_equal(5, @river.fishes_in_the_river)
end

def test_remove_a_fish
  @river.eaten_by_bear("Trout")
  assert_equal(4, @river.fishes_in_the_river)
  # assert_equal(1, @bear.stomach_contents)
end





#this is the end
end
