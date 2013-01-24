require 'helper'

class TestGeometry < Test::Unit::TestCase

  should "properly generate the image bounds" do
    area   = [Heatmap::Area.new(1,10), Heatmap::Area.new(10,20)]
    bounds = Heatmap::Geometry.bounds(area, 50)
    assert_equal 60, bounds.width
    assert_equal 70, bounds.height
  end

  should "properly generate the image bounds with one element" do
    area   = [Heatmap::Area.new(1,10)]
    bounds = Heatmap::Geometry.bounds(area, 50)
    assert_equal 51, bounds.width
    assert_equal 60, bounds.height
  end

  should "properly generate the image bounds in hypothetical negative image width" do
    area   = [Heatmap::Area.new(1,10), Heatmap::Area.new(10,20)]
    bounds = Heatmap::Geometry.bounds(area, -50)
    assert_equal -40, bounds.width
    assert_equal -30, bounds.height
  end

  should "raise exception when area is empty" do
    area   = []
    assert_raise ArgumentError do 
      Heatmap::Geometry.bounds(area, 10)
    end
  end

end
