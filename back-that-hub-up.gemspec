# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'back/that/hub/up/version'

Gem::Specification.new do |spec|
  spec.name          = "back-that-hub-up"
  spec.version       = Back::That::Hub::Up::VERSION
  spec.authors       = ["Nat Welch"]
  spec.email         = ["nat@natwelch.com"]
  spec.description   = %q{Download and cache local copies of your github repos.}
  spec.summary       = %q{Mirror your GitHub repos.}
  spec.homepage      = "http://icco.github.com/back-that-hub-up"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "octokit"
  spec.add_dependency "netrc"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
