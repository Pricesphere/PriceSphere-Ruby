# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pricesphere/version'

Gem::Specification.new do |spec|
  spec.name          = "pricesphere"
  spec.version       = Pricesphere::VERSION
  spec.authors       = ["Chris MacNaughton"]
  spec.email         = ["chmacnaughton@gmail.com"]
  spec.summary       = %q{Pricesphere is a Gem to interact with PriceSphere.com's API}
  spec.description   = %q{Pricesphere is a Gem to interact with PriceSphere.com's API}
  spec.homepage      = "https://github.com/Pricesphere/PriceSphere-Ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 1.9.3'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.0"
end
