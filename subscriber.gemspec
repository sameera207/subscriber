$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "subscriber/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "subscriber"
  s.version     = Subscriber::VERSION
  s.authors     = ["sameera207"]
  s.email       = ["sameera207@gmail.com"]
  s.homepage    = "https://github.com/sameera207"
  s.summary     = "subscriber is a very simple gem to collection e-mail subscriptions"
  s.description = "subscriber is a very simple gem to collection e-mail subscriptions"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.9"
  s.add_dependency "jquery-rails"
  

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails", ">= 4.1.0"
end
