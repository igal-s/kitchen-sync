# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kitchen-syncgz/version'

Gem::Specification.new do |spec|
  spec.name          = 'kitchen-syncgz'
  spec.version       = KitchenSyncGZ::VERSION
  spec.authors       = ['Igal Shprincis']
  spec.email         = ['igal.shprincis@gmail.com']
  spec.description   = 'Improved file transfers for for test-kitchen'
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/igal-s/kitchen-syncgz'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = []
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'net-sftp'
  spec.add_dependency 'test-kitchen', '>= 1.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
end
