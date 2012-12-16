$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "udd/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "udd: User Driven Development"
  s.version     = Udd::VERSION
  s.authors     = ["Jim Jones"]
  s.email       = ["jim.jones1@gmail.com"]
  s.homepage    = "https://www.github.com/aantix/udd"
  s.summary     = "User Driven Development. Perform usability testing, A/B testing and solicit feedback with ACTUAL HUMANS."
  s.description = "User Driven Development. Perform usability testing, A/B testing and solicit feedback with ACTUAL HUMANS quickly using Mechanical Turk."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "turkee"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "easyprompt"
  s.add_development_dependency "mocha"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "spork"

  # RSpec has to be in both test and development so that rake tasks and generators
  # are available without having to explicitly switch the environment to 'test'
  s.add_development_dependency 'factory_girl', '>= 1.3.2'
  s.add_development_dependency 'rspec', '>= 2.5.0'
end
