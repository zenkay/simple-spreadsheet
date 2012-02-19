# -*- encoding: utf-8 -*-
require File.expand_path('../lib/simple_spreadsheet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrea Mostosi"]
  gem.email         = ["andrea.mostosi@zenkay.net"]
  gem.description   = %q{Simple spreadsheet reader for common formats: Excel (.xls, .xlsx) and Open-office (.ods). Future versions: writing and more formats.}
  gem.summary       = %q{Read and write most common spreadsheet format}
  gem.homepage      = "https://github.com/zenkay/simple_spreadsheet"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "simple_spreadsheet"
  gem.require_paths = ["lib"]
  gem.version       = SimpleSpreadsheet::VERSION
  
  # specify any dependencies here; for example:
  gem.add_development_dependency "rspec"
  gem.add_runtime_dependency "roo", "1.10.1"
  gem.add_runtime_dependency "spreadsheet", "0.6.5.9"
  gem.add_runtime_dependency "rubyXL", "1.2.5"
end
