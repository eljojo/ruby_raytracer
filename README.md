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

ray_tracer = RubyRaytracer.new
ray_tracer.render
```

## Contributing

1. Fork it ( http://github.com/eljojo/ruby_raytracer/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
