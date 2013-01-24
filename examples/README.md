## Examples

### Simple example

Code: 

```ruby
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
```

Output image:

![Simple](https://raw.github.com/tjackiw/heatmap/master/examples/simple.png)

### External data example

Code:

```ruby
require 'json'
require 'heatmap'

data = open('large-data').read
map  = Heatmap.new

data.split(/\n/).each do |point|
  point = JSON.parse(point)
  map << Heatmap::Area.new(*point.values)
end

map.output('large.png')
```

Output image:

![Simple](https://raw.github.com/tjackiw/heatmap/master/examples/large.png)
