# frozen_string_literal: true

require_relative "lib/jekyll-pgp-signatures/version"

Gem::Specification.new do |spec|
  spec.name          = "jekyll-pgp-signatures"
  spec.version       = Jekyll::PgpSignatures::VERSION
  spec.authors       = ["Philihp Busby"]
  spec.email         = ["philihp@gmail.com"]
  spec.summary       = %q{Textile converter for Jekyll.}
  spec.homepage      = "https://github.com/philihp/jekyll-pgp-signatures"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "jekyll", ENV["JEKYLL_VERSION"] ? "~> #{ENV["JEKYLL_VERSION"]}" : ">= 2.0"
end