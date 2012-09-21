# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'development_ribbon/version'

Gem::Specification.new do |gem|
  gem.name          = "development_ribbon"
  gem.version       = DevelopmentRibbon::VERSION
  gem.authors       = ["Thomas Preißler"]
  gem.email         = ["thomas.preissler@gmx.de"]
  gem.description   = %q{Use a banner to indicate that you are using the development environment.}
  gem.summary       = %q{Displays a banner at the top corner to indicate that your app is running in development environment.}
  gem.homepage      = "https://github.com/ding280/development-ribbon"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
