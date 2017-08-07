# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "str_sanitizer/version"

Gem::Specification.new do |spec|
  spec.name          = "str_sanitizer"
  spec.version       = StrSanitizer::VERSION
  spec.authors       = ["Jakaria Blaine"]
  spec.email         = ["jakariablaine120@gmail.com"]

  spec.summary       = "This gem sanitizes the given string"
  spec.homepage      = "https://github.com/JakariaBlaine/str_sanitizer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
