require 'heatmap'

map = Heatmap.new
map << Heatmap::Area.new(1, 10)
map << Heatmap::Area.new(5, 20)
map << Heatmap::Area.new(17, 10)
map << Heatmap::Area.new(25, 38)
map << Heatmap::Area.new(35, 70)
map << Heatmap::Area.new(15, 90)
map << Heatmap::Area.new(27, 60)
map.output('simple.png')