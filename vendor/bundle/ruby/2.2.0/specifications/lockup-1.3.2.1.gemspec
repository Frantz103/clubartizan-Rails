# -*- encoding: utf-8 -*-
# stub: lockup 1.3.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "lockup"
  s.version = "1.3.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["gb Studio"]
  s.date = "2015-03-14"
  s.description = "A simple gem to more elegantly place a staging server or other in-progress application behind a basic codeword. It\u{2019}s easy to implement, share with clients/collaborators, and more beautiful than the typical password-protection sheet."
  s.email = ["hello@grantblakeman.com"]
  s.homepage = "http://lockupgem.com"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5.1"
  s.summary = "Lock staging servers from search engines and prying eyes."

  s.installed_by_version = "2.4.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["< 5", ">= 3"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
      s.add_development_dependency(%q<capybara>, [">= 0"])
      s.add_development_dependency(%q<launchy>, [">= 0"])
    else
      s.add_dependency(%q<rails>, ["< 5", ">= 3"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
      s.add_dependency(%q<capybara>, [">= 0"])
      s.add_dependency(%q<launchy>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, ["< 5", ">= 3"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
    s.add_dependency(%q<capybara>, [">= 0"])
    s.add_dependency(%q<launchy>, [">= 0"])
  end
end
