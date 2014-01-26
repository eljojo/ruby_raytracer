# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby_raytracer/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby_raytracer"
  spec.version       = RubyRaytracer::VERSION
  spec.authors       = ["José Tomás Albornoz"]
  spec.email         = ["jojo@eljojo.net"]
  spec.summary       = %q{simple ruby ray tracer}
  spec.description   = %q{every developer needs to have it's own ray tracer. I ported mcveat's scala implementation.}
  spec.homepage      = "https://github.com/eljojo/ruby_raytracer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency("chunky_png")

  spec.add_development_dependency("bundler", ">= 1.5")
  spec.add_development_dependency("rake")
end
