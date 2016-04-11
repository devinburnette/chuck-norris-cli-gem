# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chuck_norris/version'

Gem::Specification.new do |spec|
  spec.name          = "chuck_norris"
  spec.version       = ChuckNorris::VERSION
  spec.authors       = ["devinburnette"]
  spec.email         = ["devin.burnette@gmail.com"]

  spec.summary       = %q{chuck-norris-cli-gem}
  spec.description   = %q{chuck-norris-cli-gem}
  spec.homepage      = "https://github.com/devinburnette/chuck-norris-cli-gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"

  spec.add_runtime_dependency "htmlentities"
  spec.add_runtime_dependency "json"
  spec.add_runtime_dependency "open-uri"
end
