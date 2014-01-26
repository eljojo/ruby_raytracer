module RubyRaytracer
class Renderer
  def initialize(opts = {})
    @opts = { width: 640, height: 480, filename: 'result.png' }.merge(opts)
  end

  def render
    png = ChunkyPNG::Image.new(image_width, image_height, ChunkyPNG::Color::TRANSPARENT)

    (0...image_width).each do |x|
      (0...image_height).each do |y|
        point = WeirdGradientPoint.new(x, y, image_width, image_height)
        png[x, y] = ChunkyPNG::Color(*point.color)
      end
    end

    png.save(opts[:filename], interlace: false)
  end

private
  attr_reader :opts

  def image_width
    opts[:width]
  end

  def image_height
    opts[:height]
  end
end
end
