$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "railitics/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "railitics"
  s.version     = Railitics::VERSION
  s.authors     = ["Steve Faulkner"]
  s.email       = ["southpolesteve@gmail.com"]
  s.homepage    = "https://github.com/southpolesteve/Railitics"
  s.summary     = "An analytics engine for Rails"
  s.description = "An analytics engine for Rails"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.3"
  s.add_dependency 'mongoid'
  s.add_dependency 'bson_ext'
  s.add_dependency 'sqlite3'
  s.add_dependency "pry-rails"
  s.add_dependency "uuidtools"
  s.add_dependency 'devise'
  s.add_dependency 'sass-rails'
  s.add_dependency 'bootstrap-sass'
  s.add_dependency 'haml-rails'
  s.add_dependency 'kaminari'
  # s.add_dependency "jquery-rails"

  s.add_development_dependency 'mongoid'
  s.add_development_dependency 'bson_ext'
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "pry-rails"
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'bootstrap-sass'
  s.add_development_dependency 'haml-rails'
  s.add_development_dependency 'kaminari'
  
end
