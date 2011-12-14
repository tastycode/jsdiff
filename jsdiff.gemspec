# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jsdiff/version"

Gem::Specification.new do |s|
  s.name        = "jsdiff"
  s.version     = JSDiff::VERSION
  s.authors     = ["Thomas Devol"]
  s.email       = ["vajrapani666@gmail.com"]
  s.summary     = %q{Diff two json files and fabulously display results}

  s.rubyforge_project = "jsdiff"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "json"
  s.add_runtime_dependency "pygments.rb"
  s.add_runtime_dependency "active_support"
  s.add_runtime_dependency "slop"

  s.add_development_dependency "rspec"

end
