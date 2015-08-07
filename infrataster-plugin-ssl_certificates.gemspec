# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'infrataster_plugin_ssl_certificates/version'

Gem::Specification.new do |spec|
  spec.name          = "infrataster-plugin-ssl_certificates"
  spec.version       = Infrataster::Plugin::SslCertificates::VERSION
  spec.authors       = ["Kazuma Muramatsu"]
  spec.email         = ["muramatu.k@gmail.com"]
  spec.summary       = %q{Check SSL certificates plugin for infrataster}
  spec.description   = %q{Check SSL certificates plugin for infrataster}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'infrataster', '~> 0.3.0'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
