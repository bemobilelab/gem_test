# frozen_string_literal: true

require_relative "lib/gem_bemobile_hello_world/version"

Gem::Specification.new do |spec|
  spec.name          = "gem_bemobile_hello_world"
  spec.version       = GemBemobileHelloWorld::VERSION
  spec.authors       = ["Erick Medina"]
  spec.email         = ["emedina@bemobile.es"]

  spec.summary       = "Bemobile Gem for testing purposes"
  spec.description   = "This is a gem that prints a name for testing purposes only"
  spec.homepage      = "https://github.com/bemobilelab/gem_test"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/bemobilelab/gem_test"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bemobilelab/gem_test"
  spec.metadata["changelog_uri"] = "https://github.com/bemobilelab/gem_test/blob/master/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
