class River

  attr_reader :name, :fish_container

  def initialize(name)

    @name = name
    @fish_container = []

    # I wasn't sure that the @fish_container should have been an empty or a "full" array. I left it empty and added the fishes later, but I tested the other version, it worked as well. In that case the @fish_container would have looked like:
      # @fish_container: [@fish1, @fish2, etc.]

  end


  def river_name()
    return @river.name()
  end


  def fish_count()
    return @fish_container.length()
  end


  def add_fish(fish_name)
    @fish_container.push(fish_name)
  end


  def take_fish(fish_name)
    @fish_container.delete(fish_name)
  end


end
