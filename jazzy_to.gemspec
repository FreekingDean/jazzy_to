# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jazzy_to/version"

Gem::Specification.new do |s|
  s.name        = "jazzy_to"
  s.version     = JazzyTo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dean Galvin", "Justin Ouellette"]
  s.email       = ["deangalvin3@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/jazzy_to"
  s.summary     = %q{A simple way to add editable copy to your website.}
  s.description = %q{This is a simple way to create editiable copy on a rails app.}

  s.rubyforge_project = "jazzy-to"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('rails')
end
