# encoding: UTF-8
# -*- encoding: utf-8 -*-

$:.push File.expand_path("../lib", __FILE__)
require "rimac/version"

Gem::Specification.new do |gem|
  gem.name          = "rimac"
  gem.require_paths = ["lib"]
  gem.authors       = ["Gustavo Leon"]
  gem.email         = ["gustavo@xenda.pe"]
  gem.description   = "Ruby client for Municipalidad Metropolitana de Lima API (http://lima.datosabiertos.pe/)"
  gem.summary       = "Ruby client for Municipalidad Metropolitana de Lima API (http://lima.datosabiertos.pe/)"

  gem.platform      = Gem::Platform::RUBY
  gem.version       = Rimac::VERSION

  gem.files         = `git ls-files`.split("\n").sort
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
end