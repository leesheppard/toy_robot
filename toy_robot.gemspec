# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "toy_robot/version"

Gem::Specification.new do |spec|
  spec.name          = "toy_robot"
  spec.version       = ToyRobot::VERSION
  spec.authors       = ["Lee Sheppard"]
  spec.email         = ["lee@leesheppard.com"]

  spec.summary       = %q{Toy Robot Simulator}
  spec.description   = %q{A simulation of a toy robot moving on a square tabletop.}
  spec.homepage      = "https://github.com/leesheppard/toy_robot"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.1.0"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency 'rspec', '~> 3.6'

end
