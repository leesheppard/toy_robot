# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "toy_robot/version"

Gem::Specification.new do |spec|
  spec.name          = "toy_robot"
  spec.version       = ToyRobot::VERSION
  spec.authors       = ["Lee Sheppard"]
  spec.email         = ["lee@leesheppard.com"]

  spec.summary       = "Toy Robot Simulator"
  spec.description   = "A simulation of a toy robot moving on a square tabletop."
  spec.homepage      = "https://github.com/leesheppard/toy_robot"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.5.3"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
end
