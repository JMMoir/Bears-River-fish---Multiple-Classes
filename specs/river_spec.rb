require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
require_relative('../fish')

class RiverTest < Minitest::Test

  def setup
    @river = River.new("The Spey")
    @fish = Fish.new('salmon')
  end

  def test_name
    assert_equal("The Spey", @river.name)
  end

  def test_river_stock_count
    assert_equal(0, @river.river_stock_count)
  end

  def test_fish_in_river
    assert_equal(1, @river.fish_in_river)
  end

  def test_remove_fish_from_river
    @river.remove_fish_from_river(@fish)
    assert_equal(0, @river.river_stock_count)
  end


end
