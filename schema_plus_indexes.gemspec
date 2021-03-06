# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'schema_plus_indexes/version'

Gem::Specification.new do |spec|
  spec.name          = "schema_plus_indexes"
  spec.version       = SchemaPlusIndexes::VERSION
  spec.authors       = ["ronen barzel"]
  spec.email         = ["ronen@barzel.org"]
  spec.summary       = %q{Adds shorthands and conveniences to ActiveRecord's handling of indexes}
  spec.homepage      = "https://github.com/SchemaPlus/schema_plus_indexes"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~> 4.2"
  spec.add_dependency "schema_monkey", "~> 0.2"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0.0"
  spec.add_development_dependency "schema_dev", "~> 2.0", ">= 2.0.3"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "simplecov-gem-profile"
end
