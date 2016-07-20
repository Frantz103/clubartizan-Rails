# -*- encoding: utf-8 -*-
# stub: private_pub 1.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "private_pub"
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.4") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Bates"]
  s.date = "2012-08-20"
  s.description = "Private pub/sub messaging in Rails through Faye."
  s.email = "ryan@railscasts.com"
  s.homepage = "http://github.com/ryanb/private_pub"
  s.rubyforge_project = "private_pub"
  s.rubygems_version = "2.4.5.1"
  s.summary = "Private pub/sub messaging in Rails."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<faye>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_development_dependency(%q<jasmine>, [">= 1.1.1"])
    else
      s.add_dependency(%q<faye>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 2.8.0"])
      s.add_dependency(%q<jasmine>, [">= 1.1.1"])
    end
  else
    s.add_dependency(%q<faye>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 2.8.0"])
    s.add_dependency(%q<jasmine>, [">= 1.1.1"])
  end
end
