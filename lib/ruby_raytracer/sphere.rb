module RubyRaytracer
class Sphere < Struct.new(:position, :radius, :color)
  def intersection_with(ray)
    a = ray.direction.dot ray.direction
    b = ((ray.position - position) * 2).dot ray.direction
    c = (position.dot position) + \
        (ray.position.dot ray.position) - \
        (ray.position.dot(position) * 2) - \
        (radius ** 2)

    discriminant = (b ** 2) - (4 * a * c)

    # NOTE: The ``discriminant < 0`` part wasn't included in Piotr's implementation.
    # Turns out Java fails silently with a NaN if discriminant is negative,
    # while ruby raises an exception.
    # Maybe this is mathematically incorrect. Will do some research (eventually)

    if c < 0 or discriminant < 0 then
      Float::INFINITY
    else
      -1 * (b + Math.sqrt(discriminant)) / 2 / a
    end
  end
end
end
