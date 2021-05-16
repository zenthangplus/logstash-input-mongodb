Gem::Specification.new do |s|
  s.name = 'logstash-input-mongodb'
  s.version = '0.4.2'
  s.licenses = ['Apache License (2.0)']
  s.summary = "This takes entries from mongodb as an input to logstash."
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Philip Hutchins"]
  s.email = 'flipture@gmail.com'
  s.homepage = "http://www.phutchins.com"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir[
  'lib/**/*',
  'spec/**/*',
  'vendor/**/*',
  '*.gemspec',
  '*.md',
  'CONTRIBUTORS',
  'Gemfile',
  'LICENSE',
  'NOTICE.TXT'
]
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "input" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core', ">= 5.0"
  s.add_runtime_dependency "logstash-core-plugin-api", "~> 2.0"
  s.add_runtime_dependency 'logstash-codec-plain', '~> 3.0'
  s.add_runtime_dependency 'stud', '~> 0.0.22'
  s.add_runtime_dependency 'jdbc-sqlite3', '3.8.10.1'
  s.add_runtime_dependency 'sequel', '5.2.0'
  s.add_runtime_dependency 'mongo', '~> 2.4'
  s.add_development_dependency 'logstash-devutils', '~> 1.3'
end