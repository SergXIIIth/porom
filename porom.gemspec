# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'porom/version'

Gem::Specification.new do |spec|
  spec.name          = "porom"
  spec.version       = Porom::VERSION
  spec.authors       = ["Sergey Makridenkov"]
  spec.email         = ["sergey@makridenkov.com"]
  spec.summary       = %q{Pure Old Ruby Object Model - tool to decouple application from data storage and presentation}
  spec.homepage      = "https://github.com/SergXIIIth/porom"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
