# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pieces/version'

Gem::Specification.new do |spec|
  spec.name          = "pieces"
  spec.version       = Pieces::VERSION
  spec.authors       = ["Dario Ghilardi"]
  spec.email         = ["darioghilardi@webrain.it"]

  spec.summary       = %q{Include visual components from an engine into Rails projects and display a styleguide.}
  spec.description   = %q{Include visual components from an engine into Rails projects and display a styleguide.}
  spec.homepage      = "https://github.com/darioghilardi/pieces"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = ["styleguide"]
  spec.require_paths = ["lib"]

  spec.add_dependency "sinatra", "~> 1.4.6"
  spec.add_dependency "sinatra-asset-pipeline", "~> 0.7.0"
  spec.add_dependency "rack-livereload", "~> 0.3.15"
  spec.add_dependency "guard-livereload", "~> 2.4.0"
  spec.add_dependency "pry"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
