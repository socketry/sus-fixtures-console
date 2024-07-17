# frozen_string_literal: true

require_relative "lib/sus/fixtures/console/version"

Gem::Specification.new do |spec|
	spec.name = "sus-fixtures-console"
	spec.version = Sus::Fixtures::Console::VERSION
	
	spec.summary = "Test fixtures for capturing Console output."
	spec.authors = ["Samuel Williams"]
	spec.license = "MIT"
	
	spec.cert_chain  = ['release.cert']
	spec.signing_key = File.expand_path('~/.gem/release.pem')
	
	spec.homepage = "https://github.com/sus-rb/sus-fixtures-console"
	
	spec.metadata = {
		"documentation_uri" => "https://sus-rb.github.io/sus-fixtures-console/",
		"funding_uri" => "https://github.com/sponsors/ioquatix/",
		"source_code_uri" => "https://github.com/sus-rb/sus-fixtures-console.git",
	}
	
	spec.files = Dir.glob(['{lib}/**/*', '*.md'], File::FNM_DOTMATCH, base: __dir__)
	
	spec.required_ruby_version = ">= 3.1"
	
	spec.add_dependency "console", "~> 1.25"
	spec.add_dependency "sus", "~> 0.10"
end
