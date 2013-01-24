require 'helper'

class TestMap < Test::Unit::TestCase

  should "properly instantiate the class" do
    assert Heatmap::Map === Heatmap::Map.new
  end

  should "properly output the image" do
    map = Heatmap::Map.new
    map << Heatmap::Area.new(1, 2)
    map.area << Heatmap::Area.new(3, 4)
    assert map.output(example_png_file)
  end

  should "fail to output on empty area array" do
    map = Heatmap::Map.new
    assert_raise ArgumentError do
      map.output
    end
  end

end
