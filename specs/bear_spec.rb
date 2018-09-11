require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')
require_relative('../bear')

class BearTest < Minitest::Test

def setup
  @bear = Bear.new("Rufus", "Badass",)
  @river = River.new("Clyde", @fish_stock)
  @fish_stock = ["Trout", "Bass", "Salmon", "Pollok", "Cod"]
  @fish1 = Fish.new("Jackson")
  @fish2 = Fish.new("Dave")
  @fish3 = Fish.new("Bob")
end

def test_whats_the_bears_name
  @bear.name
  assert_equal("Rufus", @bear.name)
end

def test_contents_of_bears_stomach
  @bear.fishes_eaten
  assert_equal([], @bear.fishes_eaten)
end

def test_how_many_fishes_in_the_bear
  @bear.stomach_contents
  assert_equal(0, @bear.stomach_contents)
end

def test_feed_from_the_river
  @bear.eat_fish(@fish1)
  @bear.eat_fish(@fish2)
  assert_equal(2, @bear.stomach_contents)
end

def test_bears_voice
  @bear.roar
  assert_equal("RRRRROOOOOAAAAAARRRRR!!!!!", @bear.roar)
end






#this is the end
end
