require 'chunky_png'
require "ruby_raytracer/version"
require "ruby_raytracer/vector"
require "ruby_raytracer/ray"
require "ruby_raytracer/color"
require "ruby_raytracer/sphere"
require "ruby_raytracer/camera"
require "ruby_raytracer/scene"
require "ruby_raytracer/renderer"

module RubyRaytracer
  def self.new(*opts)
    Renderer.new(*opts)
  end
end
