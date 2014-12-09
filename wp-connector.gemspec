# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wp-connector/version'

Gem::Specification.new do |spec|
  spec.name          = "wp-connector"
  spec.version       = WpConnector::VERSION
  spec.authors       = ["janmetten"]
  spec.email         = ["janmetten@hoppinger.com"]
  spec.summary       = %q{Gem for getting data out of Wordpress}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "json"
  spec.add_dependency "faraday"
  spec.add_dependency "sidekiq"
  spec.add_dependency "rails_config"
  
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
