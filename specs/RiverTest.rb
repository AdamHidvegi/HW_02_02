require("minitest/autorun")
require("minitest/rg")
require_relative("../River.rb")
require_relative("../Bear.rb")
require_relative("../Fish.rb")

class RiverTest < MiniTest::Test


  def setup()

    @bear = Bear.new("Winnie", "the_Pooh")
    @river = River.new("Danube")

    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Nemo")
    @fish3 = Fish.new("Nemo")
    @fish4 = Fish.new("Nemo")
    @fish5 = Fish.new("Nemo")
    @fish6 = Fish.new("Nemo")
    @fish7 = Fish.new("Nemo")

    # @fish_container = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6, @fish7]

  end


  def test_river_name()
    assert_equal("Danube", @river.name())
  end


  def test_river_fish_count()
    assert_equal(0, @river.fish_count())
  end


  def test_add_fish()
    @river.add_fish(@fish1)
    assert_equal(1, @river.fish_count())
  end


  def test_take_fish()
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    @river.take_fish(@fish2)
    assert_equal(1, @river.fish_count())
  end


end
