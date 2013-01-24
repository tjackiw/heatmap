module Heatmap
  class Area

    attr_reader :x,:y, :alpha

    def initialize(x, y, alpha = 1)
      raise(ArgumentError, "The x, y, alpha values need to be >= 0") if x < 0 || y < 0 || alpha < 0
      @x, @y, @alpha = x, y, alpha
    end

    def x_y
      "+#{x}+#{y}"
    end
  end

end