$:.push File.expand_path("../lib", __FILE__)
require File.join(File.dirname(__FILE__), 'lib', 'devise_traceable', 'version')

spec = Gem::Specification.new do |s|
  s.name = "devise_traceable"
  s.summary = "Devise Traceable For Traceing Devise Models"
  s.description = "Devise Traceable For Traceing Devise Models Logins and Logouts in separate model table"
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_paths = ["lib"]
  s.version = DeviseTraceable::VERSION.dup
  s.email = "sbertel@mobithought.com"
  s.homepage = "http://github.com/shenoudab/devise_traceable"
  s.author = 'Shenouda Bertel'
  s.add_dependency("warden")
  s.add_dependency("devise")
end
