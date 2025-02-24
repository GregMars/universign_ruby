# frozen_string_literal: true

require_relative "lib/universign_ruby/version"

Gem::Specification.new do |spec|
  spec.name = "universign_ruby"
  spec.version = UniversignRuby::VERSION
  spec.authors = ["Greg Cazzulo"]
  spec.email = ["greg.cazzulo@gmail.com"]

  spec.summary = "A Ruby gem to interact with the Universign API."
  spec.description = "This gem provides a modular way to work with Universign's e-signature, timestamping, and authentication features."
  spec.homepage = "https://github.com/GregMars/universign"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/GregMars/universign_ruby"
  spec.metadata["changelog_uri"] = "https://github.com/GregMars/universign_ruby/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
