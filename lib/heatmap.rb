module Heatmap

  autoload :Area,     'heatmap/area'
  autoload :Map,      'heatmap/map'
  autoload :Image,    'heatmap/image'
  autoload :Geometry, 'heatmap/geometry'

  # Shortcut for Heatmap::Map.new
  def self.new
    Heatmap::Map.new
  end

end
