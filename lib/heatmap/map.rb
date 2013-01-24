module Heatmap
  class Map

    attr_accessor :area

    def initialize
      raise(RuntimeError, "You need to have ImageMagick installed!") if `which convert`.strip.empty?
      @area = []
    end

    def <<(item)
      @area << item
    end

    def output(file = 'heatmap.png')
      Heatmap::Image.new(@area, file)
    end

  end
end