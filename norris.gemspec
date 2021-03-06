# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'norris/version'

Gem::Specification.new do |spec|
  spec.name          = "norris"
  spec.version       = Norris::VERSION
  spec.authors       = ["Devin Burnette"]
  spec.email         = ["devin.burnette@gmail.com"]

  spec.summary       = %q{chuck-norris-cli-gem}
  spec.description   = %q{chuck-norris-cli-gem}
  spec.homepage      = "https://github.com/devinburnette/chuck-norris-cli-gem"
  spec.license       = "MIT"

  spec.files         = spec.files.grep(%r{^(test|spec|features)/})
  spec.bindir        = "bin"
  spec.executables   = ["norris"]
  spec.require_paths = "lib"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "json", "1.8.3"
  spec.add_dependency "htmlentities", "4.3.4"
end
