require 'ostruct'

module Heatmap
  class Geometry < OpenStruct

    class << self
      def bounds(area, point_image_width)
        raise(ArgumentError, "Area needs to be an array of Heatmap::Area objects") if area.empty?

        @area = area
        new(width: point_image_width + max_x, height: point_image_width + max_y)
      end

      private
      def max_x
        @area.max{|a,b| a.x <=> b.x }.x
      end

      def max_y
        @area.max{|a,b| a.y <=> b.y }.y
      end
    end

  end
end