require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')


class BearTest < Minitest::Test

  def setup
    @bear = Bear.new('Hector', "Brown Bear")
    @fish = Fish.new('salmon')
    @river = River.new('The Spey')
  end

  def test_name
    assert_equal('Hector', @bear.name)
  end

  def test_is_belly_empty
    assert_equal(0, @bear.belly_count)
  end

  def test_catch_fish
    @bear.catch_fish(@fish, @river)
    assert_equal(0, @river.river_stock_count)
  end

  def test_eat_fish
    @bear.eat_fish(@fish)
    assert_equal(1, @bear.belly_count)
  end

  def test_does_this_bear_roar
    assert_equal("This bear roars!", @bear.roar)
  end

end
