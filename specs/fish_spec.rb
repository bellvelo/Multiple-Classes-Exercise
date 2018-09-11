require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../bear')
require_relative('../fish')

class FishTest < Minitest::Test

def setup
  @fish1 = Fish.new("Jackson")
  @fish2 = Fish.new("Dave")
  @fish3 = Fish.new("Bob")
end

def test_whats_the_fishes_name
  @fish1.name
  assert_equal("Jackson", @fish1.name)
end









#this is the end
end
