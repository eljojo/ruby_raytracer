module RubyRaytracer
class Renderer
  def initialize(opts = {})
    @opts = { width: 800, height: 800, filename: 'result.png' }.merge(opts)
  end

  def render(scene)
    @scene = scene
    png = ChunkyPNG::Image.new(image_width, image_height, ChunkyPNG::Color::TRANSPARENT)

    (0...image_width).each do |x|
      (0...image_height).each do |y|
        png[x, y] = trace(x, image_height - y)
      end
    end

    png.save(opts[:filename], interlace: false)
  end

  def image_width
    opts[:width]
  end

  def image_height
    opts[:height]
  end

private
  attr_reader :opts, :scene

  def trace(x, y)
    plane_position = Vector.new(x, y, 0)
    ray = RubyRaytracer::Ray.new(plane_position, plane_position - scene.camera.position)

    intersection_colors = scene.shapes.map do |shape|
      [shape.color, shape.intersection_with(ray)]
    end

    color, distance = intersection_colors.sort_by{|_, distance| distance }.first

    if distance < Float::INFINITY then
      color
    else
      Color.black
    end
  end
end
end
