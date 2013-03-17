$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "worldwise/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "worldwise"
  s.version     = Worldwise::VERSION
  s.authors     = ["Daniel Jonasson"]
  s.email       = ["daniel@guadeo.com"]
  s.homepage    = "https://github.com/djonasson/worldwise"
  s.summary     = %q{Worldwise knows things. About continents. About countries.
    About regions. About languages. About locales. About currencies. About you.
    Well... maybe not about you, but still pretty impressive, huh?}
  s.description = %q{Worldwise is a Rails gem that provides your application
    with a series of ActiveRecord models representing various aspects of our
    world, such as geographic/political divisions, languages, currencies and
    more. Globalize3 is used to provide translations for each model. More
    information can be found at: https://github.com/djonasson/worldwise}

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile",
    "README.rdoc"]

  s.add_dependency "rails", ">= 3.1.0"
  s.add_dependency "globalize3", ">= 0.3.0"
  s.add_dependency "symmetry", ">= 0.0.1"
end
