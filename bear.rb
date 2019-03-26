class Bear

  attr_reader :name, :type, :belly

  def initialize(name, type)
    @name = name
    @type = type
    @belly = []
  end

  def belly_count
    @belly.length()
  end

  def catch_fish(fish, river)
    river.remove_fish_from_river(fish)
  end

  def eat_fish(fish)
    @belly << fish
  end

  def roar
    return "This bear roars!"
  end


end
