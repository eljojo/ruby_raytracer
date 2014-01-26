module RubyRaytracer
class Sphere < Struct.new(:position, :radius, :color)
  def intersection_with(ray)
    v = position - ray.position
    a = v.dot ray.direction
    b = (v.dot(v)) - (radius * radius)
    c = a * a - b

    if c >= 0 then
      a - Math.sqrt(c)
    else
      Float::INFINITY
    end
  end
end
end
