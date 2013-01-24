require 'json'
require 'heatmap'

data = open('large-data').read
map  = Heatmap.new

data.split(/\n/).each do |point|
  point = JSON.parse(point)
  map << Heatmap::Area.new(*point.values)
end

map.output('large.png')