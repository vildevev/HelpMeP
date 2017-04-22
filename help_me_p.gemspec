# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'help_me_p/version'

Gem::Specification.new do |spec|
  spec.name          = "help_me_p"
  spec.version       = HelpMeP::VERSION
  spec.authors       = ["“Vilde"]
  spec.email         = ["vilde@vevatne.no"]

  spec.summary       = %q{A gem that assists when printing params etc to easily locate them in the console.}
  spec.homepage      = "https://github.com/vildevev/help_me_p"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "awesome_print", "~> 1.7.0"
end
