# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent/plugin/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-syslog"
  spec.version       = Fluent::SyslogOutput::VERSION
  spec.authors       = ["tamu222i"]
  spec.email         = ["t.a.m.u.2.2.2.i@gmail.com"]
  spec.summary       = %q{fluent plugin out_syslog}
  spec.description   = %q{fluent plugin out_syslog}
  spec.homepage      = "https://github.com/tamu222i/fluent-plugin-syslog"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "fluentd"
end
