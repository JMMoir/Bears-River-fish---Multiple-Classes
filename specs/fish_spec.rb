require('minitest/autorun')
require('minitest/rg')
require_relative('../Fish')

class FishTest < Minitest::Test

  def setup
    @fish1 = Fish.new("salmon")
    @fish2 = Fish.new("pike")
    @fish3 = Fish.new("sprats")

    @fish = [@fish1, @fish2, @fish3]
  end

  def test_name
    assert_equal("salmon", @fish1.name)
  end


end
