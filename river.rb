class River

  attr_reader :name, :river_stock

  def initialize(name)
    @name = name
    @river_stock = []
  end

  def river_stock_count
    @river_stock.length()
  end

  def fish_in_river
    stocked_river = @river_stock << @fish
    return stocked_river.length()
  end

  def remove_fish_from_river(fish)
      @river_stock.delete(fish)
  end

end
