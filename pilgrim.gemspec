$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "pilgrim/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pilgrim"
  s.version     = Pilgrim::VERSION
  s.authors     = ["Pablo Marti"]
  s.email       = ["pablo.marti89@gmail.com"]
  s.homepage    = "https://github.com/pablomarti/pilgrim"
  s.summary     = "Helpers for countries, states and cities"
  s.description = "Choose countries, states and cities via Ajax"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "mysql2"
end