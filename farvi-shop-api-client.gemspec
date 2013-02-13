# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'farvi-shop-api-client/version'

Gem::Specification.new do |gem|
  gem.name          = "farvi-shop-api-client"
  gem.version       = FarviShop::API::Client::VERSION
  gem.authors       = ["Andrew Nesbitt", "llxff"]
  gem.email         = ["andrewnez@gmail.com", "ll.wg.bin@gmail.com"]
  gem.description   = %q{A rubygem for interacting with the Farvi API}
  gem.summary       = %q{A rubygem for interacting with the Farvi API}
  gem.homepage      = "https://github.com/llxff/farvi-shop-api-client"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'faraday', '~> 0.8'
  gem.add_dependency 'faraday_middleware', '~> 0.9'
  gem.add_dependency 'hashie', '~> 1.2'
  gem.add_dependency 'multi_json', '~> 1.4'

  gem.add_development_dependency 'rake'
end
