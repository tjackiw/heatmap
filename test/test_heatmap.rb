require 'helper'

class TestHeatmap < Test::Unit::TestCase

  should "properly generate a heatmap" do
    map = Heatmap::Map.new
    10.times{|i| map << Heatmap::Area.new(rand(1..100), rand(1..100))}
    assert map.output(example_png_file)
  end

end
