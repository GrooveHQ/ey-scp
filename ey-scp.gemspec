# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "glennr-ey-scp"
  spec.version       = '0.3.2'
  spec.authors       = ["Steven Dunlap", "Glenn Roberts"]
  spec.email         = ["steven@roadtrippers.com", "glenn@groovehq.com"]
  spec.description   = "Quickly copy files (e.g. YMLs or configuration files) to multiple EngineYard servers"
  spec.summary       = File.open('README.md').read
  spec.homepage      = "http://github.com/groove/ey-scp"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency 'json', '~> 1.8'
  spec.add_dependency 'net-scp', '~> 1.1'
  spec.add_dependency 'faraday', '~> 0.8'
end
