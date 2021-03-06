# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "easy_parser/version"

Gem::Specification.new do |spec|
  spec.name          = "easy_parser"
  spec.version       = EasyParser::VERSION
  spec.authors       = ["Emilio Blanco"]
  spec.email         = ["emilioeduardob@gmail.com"]
  spec.homepage      = "https://github.com/emilioeduardob/easy_parser"
  spec.summary       = "Parse xlsx, csv or xls with a unified interface"
  spec.description   = "Parse xlsx, csv or xls with a unified interface"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "creek"

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.4"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "coveralls"
end
