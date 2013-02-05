module Heatmap
  class Map

    attr_accessor :area

    def initialize
      l = `which convert` || `where convert`
      raise(RuntimeError, "You need to have ImageMagick installed!") if l.nil? || l.strip.empty?
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