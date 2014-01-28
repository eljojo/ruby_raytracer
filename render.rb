require 'ruby_raytracer'

ray_tracer = RubyRaytracer.new(filename: 'result.png', width: 800, height: 800)

Sphere = RubyRaytracer::Sphere
Vector = RubyRaytracer::Vector
Color  = RubyRaytracer::Color

scene = RubyRaytracer::Scene.new([
  Sphere.new(Vector.new(300.0, 500.0, 600.0), 170, Color.blue),
  Sphere.new(Vector.new(550.0, 250.0, 400.0), 100, Color.red),
  Sphere.new(Vector.new(250.0, 250.0, 250.0), 150, Color.green)
])

start = Time.now
ray_tracer.render(scene)
finish = Time.now

puts "rendered in #{finish-start} seconds"