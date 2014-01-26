module RubyRaytracer
class Vector < Struct.new(:x, :y, :z)
  def +(vector)
    Vector.new(x + vector.x, y + vector.y, z + vector.z)
  end

  def -(vector)
    Vector.new(x - vector.x, y - vector.y, z - vector.z)
  end

  def *(vector_or_integer)
    if vector_or_integer.is_a?(Vector) then
      vector = vector_or_integer
      Vector.new(x * vector.x, y * vector.y, z * vector.z)
    else
      factor = vector_or_integer
      Vector.new(x * factor, y * factor, z * factor)
    end
  end

  def /(vector_or_integer)
    if vector_or_integer.is_a?(Vector) then
      vector = vector_or_integer
      Vector.new(x / vector.x, y / vector.y, z / vector.z)
    else
      factor = vector_or_integer
      Vector.new(x / factor, y / factor, z / factor)
    end
  end

  def dot(vector)
    (self * vector).elements_sum
  end

  def elements_sum
    x + y + z
  end
end
end
