source "http://rubygems.org"

# Declare your gem's dependencies in worldwise.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# jquery-rails is used by the dummy application
#gem "jquery-rails"

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use debugger
# gem 'debugger'

group :development do
  gem "guard-rspec"
  gem "guard-spork"
  gem "rb-inotify", ">= 0.9.0"
  gem "awesome_print"
  gem "rails-erd"
end

group :test do
  gem "rspec-rails"
  gem "spork"
  gem "capybara"
  gem "shoulda-matchers", "= 1.4.2"
  gem "simplecov", require: false
  gem "coveralls", require: false
end

group :development, :test do
  gem "sqlite3"
end
