# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kontena/plugin/digital_ocean'

Gem::Specification.new do |spec|
  spec.name          = "kontena-plugin-digitalocean"
  spec.version       = Kontena::Plugin::DigitalOcean::VERSION
  spec.authors       = ["Kontena, Inc."]
  spec.email         = ["info@kontena.io"]

  spec.summary       = "Kontena DigitalOcean plugin"
  spec.description   = "Kontena DigitalOcean plugin"
  spec.homepage      = "https://github.com/kontena/kontena-plugin-digitalocean"
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'kontena-cli', '>= 1.0'
  spec.add_runtime_dependency 'droplet_kit', '~> 2.0', '>= 2.0.1'
  spec.add_runtime_dependency 'activesupport', '~> 4.0'
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
