Gem::Specification.new do |s|
  s.name            = 'logstash-filter-lookup'
  s.version         = '1.2.1'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "A general search and replace tool which uses a configured web service to determine replacement values."
  s.description     = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install logstash-filter-lookup. This gem is not a stand-alone program. See https://github.com/angel9484/logstash-filter-lookup"
  s.authors         = ["Elastic"]
  s.email           = 'info@elastic.co'
  s.homepage        = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib"]

  # Files
  s.files = Dir['lib/**/*','spec/**/*','vendor/**/*','*.gemspec','*.md','CONTRIBUTORS','Gemfile','LICENSE','NOTICE.TXT']

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 1.5.0", "< 3.0.0"
  s.add_development_dependency 'logstash-devutils', '~> 0'
end