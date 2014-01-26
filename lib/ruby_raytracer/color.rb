module RubyRaytracer
module Color
  module ClassMethods
    def new(*opts)
      ChunkyPNG::Color(*opts)
    end

    def black
      ChunkyPNG::Color(0, 0, 0)
    end

    def red
      ChunkyPNG::Color(255, 0, 0)
    end

    def green
      ChunkyPNG::Color(0, 255, 0)
    end

    def blue
      ChunkyPNG::Color(0, 0, 255)
    end
  end

  extend ClassMethods
end
end
