
Gem::Specification.new do |spec|
  spec.name          = "embulk-input-elasticsearch"
  spec.version       = "0.3.9"
  spec.authors       = ["toyama0919"]
  spec.summary       = "Elasticsearch input plugin for Embulk"
  spec.description   = "Loads records from Elasticsearch. parallel query support."
  spec.email         = ["toyama0919@gmail.com"]
  spec.licenses      = ["MIT"]
  spec.homepage      = "https://github.com/toyama0919/embulk-input-elasticsearch"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'elasticsearch'
  spec.add_dependency 'elastic-transport'
  spec.add_dependency 'excon'
  spec.add_development_dependency 'embulk', ['>= 0.8.18']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
  spec.add_development_dependency 'test-unit'
end
