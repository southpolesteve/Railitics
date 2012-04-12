$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "railitics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "railitics"
  s.version     = Railitics::VERSION
  s.authors     = ["Steve Faulkner"]
  s.email       = ["southpolesteve@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Railitics."
  s.description = "TODO: Description of Railitics."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
