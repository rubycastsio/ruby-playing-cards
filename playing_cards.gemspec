# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'playing_cards/version'

Gem::Specification.new do |spec|
  spec.name          = "playing_cards"
  spec.version       = PlayingCards::VERSION
  spec.authors       = ["James OKelly"]
  spec.email         = ["dreamr.okelly@gmail.com"]
  spec.summary       = %q{A deck of playing cards represented in functional ruby}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "values", "~> 1.5.0"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "thincloud-test", "~> 1.0.0"
end
