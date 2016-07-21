# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple-spreadsheet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrea Mostosi"]
  gem.email         = ["andrea.mostosi@zenkay.net"]
  gem.description   = %q{Simple spreadsheet reader for common formats: Excel (.xls, .xlsx), Open-office (.ods) and some CSV (standard, excel, tab separated). Future versions: writing and more formats.}
  gem.summary       = %q{Read and write most common spreadsheet format}
  gem.homepage      = "https://github.com/zenkay/simple-spreadsheet"
  gem.license       = "MIT"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "simple-spreadsheet"
  gem.require_paths = ["lib"]
  gem.version       = SimpleSpreadsheet::VERSION

  # specify any dependencies here; for example:
  gem.add_development_dependency "bundler", "~> 1.10"
  gem.add_development_dependency "rake", "~> 10.1"
  gem.add_development_dependency "rspec","~> 3.3"
  gem.add_runtime_dependency "roo", "~> 2.4"
  gem.add_runtime_dependency "roo-xls", "~> 1.0"
end
