require 'helper'

class TestArea < Test::Unit::TestCase

  should "initialize the class" do
    assert Heatmap::Area === Heatmap::Area.new(1,1,0.5)
  end

  should "fail to initialize on values less than zero" do
    [ {x: -1, y: 1, a: 0.5}, {x: 1, y: -1, a: 0.5}, {x: 1, y: 1, a: -1}].each do |set|
      assert_raise ArgumentError do
        Heatmap::Area.new(*set.values)
      end
    end
  end

  should "be able to access to instance values" do
    x, y, a = 1, 2, 0.5
    area = Heatmap::Area.new(x, y, a)
    assert_equal x, area.x
    assert_equal y, area.y
    assert_equal a, area.alpha
  end
  
  should "return the x_y values" do
    area = Heatmap::Area.new(10, 100)
    assert_equal "+10+100", area.x_y
  end
end
