# RubyRaytracer

Every developer needs to have it's own ray tracer.
I ported [mcveat's scala implementation](https://github.com/mcveat/scala-raytracer).

let's see where this goes.

## THIS IS NOT REALLY SUPPOSED TO BE USED BY SOMEONE
Don't consider this something stable at all.

## Installation

Add this line to your application's Gemfile:

    gem 'ruby_raytracer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_raytracer

## Usage

```ruby
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

ray_tracer.render(scene)
```

## Contributing

1. Fork it ( http://github.com/eljojo/ruby_raytracer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
