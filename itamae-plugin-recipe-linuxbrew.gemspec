# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/linuxbrew/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-linuxbrew"
  spec.version       = Itamae::Plugin::Recipe::Linuxbrew::VERSION
  spec.authors       = ["iyuuya"]
  spec.email         = ["i.yuuya@gmail.com"]

  spec.summary       = %q{Itamae plugin to install linuxbrew}
  spec.description   = %q{Itamae plugin to install linuxbrew}
  spec.homepage      = "https://github.com/iyuuya/itamae-plugin-recipe-linuxbrew"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "itamae", "~> 1.9"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
