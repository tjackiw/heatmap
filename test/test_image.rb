require 'helper'

class TestImage < Test::Unit::TestCase

  should "fail to instantiate the class due to empty area" do
    assert_raise ArgumentError do
      Heatmap::Image.new([], example_png_file)
    end
  end
  
  # TODO: improve this test
  should "properly instantiate the class" do
    area = [Heatmap::Area.new(1,2)]
    assert Heatmap::Image === Heatmap::Image.new(area, example_png_file)
  end

end
