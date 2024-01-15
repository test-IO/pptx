# frozen_string_literal: true

require_relative "lib/pptx/version"

Gem::Specification.new do |spec|
  spec.name = "pptx"
  spec.version = Pptx::VERSION
  spec.authors = ["Garcia Fabien"]
  spec.email = ["fab0670312047@gmail.com"]

  spec.summary = "Gem to interract with pptx files."
  spec.description = "Gem to interract with pptx files. Allows to read and write pptx files."
  spec.homepage = "https://github.com/test-IO/pptx"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/test-IO/pptx"
  spec.metadata["changelog_uri"] = "https://github.com/test-IO/pptx/blob/master/CHANGELOG.md"

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

  spec.add_dependency "nokogiri", "~> 1.13", ">= 1.13.0"
  spec.add_dependency "rubyzip",  "~> 2.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
