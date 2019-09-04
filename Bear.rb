class Bear

  attr_reader :name, :type

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = []

  end


  def bear_name()
    return @bear.name()
  end


  def bear_type()
    return @bear.type()
  end


  def food_count()
    @stomach.length()
  end


  def put_fish(fish_name)
    @stomach.push(fish_name)
  end


  def bear_roar()
    return "ROAAAAR"
  end


end
