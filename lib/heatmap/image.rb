module Heatmap
  class Image

    POINT    = File.new(File.dirname(__FILE__) + "/../assets/point.png", 'r')
    GRADIENT = File.new(File.dirname(__FILE__) + "/../assets/gradient.png", 'r')

    def initialize(area, file)
      raise(ArgumentError, "Area needs to be an array of Heatmap::Area objects") if area.empty?

      file   = File.new(file, 'w')
      bounds = Heatmap::Geometry.bounds(area, 100)

      # Creating a blank canvas
      system("convert -size #{bounds.width}x#{bounds.height} pattern:gray100 #{file.path}")

      # Drawing each area
      compose = ["convert #{file.path}"]
      compose << area.map{|area| "-page #{area.x_y} #{POINT.path}" }
      compose << "-layers flatten #{file.path}"
      system(compose * ' ')

      # Applying color with a LUT
      system("convert -channel ALL -clut #{file.path} #{GRADIENT.path} #{file.path}")

      # Apply a default 50% opacity
      system("mogrify -channel A -fx \"A*0.50\" #{file.path}")

      file.close
    end

  end
end