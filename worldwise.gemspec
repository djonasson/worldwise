$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "worldwise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "worldwise"
  s.version     = Worldwise::VERSION
  s.authors     = ["Daniel Jonasson"]
  s.email       = ["daniel@guadeo.com"]
  s.homepage    = "http://guadeo.com/"
  s.summary     = "TODO: Summary of Worldwise."
  s.description = "TODO: Description of Worldwise."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.11"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-spork"
  s.add_development_dependency "rb-inotify", "~> 0.8.8"
end
