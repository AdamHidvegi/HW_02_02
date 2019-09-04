require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

class BearTest < MiniTest::Test

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


  def test_bear_name()
    assert_equal("Winnie", @bear.name())
  end


  def test_bear_type()
    assert_equal("the_Pooh", @bear.type())
  end


  def test_food_count()
    assert_equal(0, @bear.food_count())
  end


  def test_put_fish()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.take_fish(@fish1)
    @bear.put_fish(@fish1)
    assert_equal(1, @bear.food_count())
    assert_equal(1, @river.fish_count)
  end


  def test_bear_roar()
    assert_equal("ROAAAAR", @bear.bear_roar())
  end


end
