require 'chunky_png'
require "ruby_raytracer/version"
require "ruby_raytracer/renderer"
require "ruby_raytracer/weird_gradient_point"

module RubyRaytracer
  def self.new(*opts)
    Renderer.new(*opts)
  end
end
