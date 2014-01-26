module RubyRaytracer
class WeirdGradientPoint < Struct.new(:x, :y, :image_width, :image_height)
  def color
    [
      (x * 255) / image_width,
      (y * 255) / image_height,
      ((x + y) * 255) / (image_width + image_height)
    ]
  end
end
end
