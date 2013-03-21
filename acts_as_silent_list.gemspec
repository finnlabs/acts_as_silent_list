$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "acts_as_silent_list/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts_as_silent_list"
  s.version     = ActiveRecord::Acts::SilentList::VERSION
  s.authors     = ['David Heinemeier Hansson', 'Swanand Pagnis', 'Quinn Chaffee', 'Gregor Schmidt']
  s.email       = ["test@finn.de"]
  s.homepage    = "http://www.finn.de/"
  s.summary     = %q{A gem allowing a active_record model to be ordered, without triggering active record callbacks.}
  s.description = %q{This "acts_as" extension is a clone of the well known acts_as_list, only it avoids triggering active record callbacks.}

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]


  # Load Paths...
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # Dependencies (installed via 'bundle install')...
  s.add_development_dependency("bundler", [">= 1.0.0"]) #TODO: replaced ~> with >=
  #s.add_development_dependency("activerecord", [">= 1.15.4.7794"])
  s.add_development_dependency("activerecord", ["= 4.0.0.beta1"])
  s.add_development_dependency("rake")
  s.add_development_dependency("rdoc")
  s.add_development_dependency("sqlite3")
end
