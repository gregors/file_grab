# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'file_grab/version'

Gem::Specification.new do |spec|
  spec.name          = "file_grab"
  spec.version       = FileGrab::VERSION
  spec.authors       = ["Gregory Ostermayr"]
  spec.email         = ["gregory.ostermayr@gmail.com"]
  spec.description   = %q{Grab a list of files easily}
  spec.summary       = %q{Grabs and returns an array of files from the current directory}
  spec.homepage      = "https://github.com/gregors/file_grab"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
