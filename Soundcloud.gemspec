# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'Soundcloud/version'

Gem::Specification.new do |spec|
  spec.name          = "Soundcloud"
  spec.version       = Soundcloud::VERSION
  spec.authors       = ["Amit"]
  spec.email         = ["gudeamit148@gmail.com"]
  spec.summary       = %q{A ruby library for Soundcloud }
  spec.description   = %q{This gem enables users to retreive permalinks for tracks uploaded by a particular user and also allows users to retrieve permalink_url for a playlist of user}
  spec.homepage      = "https://github.com/amitgude/SoundCloudGem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "httparty", "~> 0.13.5"
end
