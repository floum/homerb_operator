# frozen_string_literal: true

require_relative "lib/homerb_operator/version"

Gem::Specification.new do |spec|
  spec.name = "homerb_operator"
  spec.version = HomerbOperator::VERSION
  spec.authors = ["efflam castel"]
  spec.email = ["efflam.castel@orange.com"]

  spec.summary = 'A Kubernetes Homer Landing Page Operator'
  spec.description = 'Manage one or multiple Homer Landing Pages with this kubernetes operator'
  spec.homepage = 'https://github.com/floum/homerb_operator'
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/floum/homerb_operator'
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency 'kubernetes'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end

