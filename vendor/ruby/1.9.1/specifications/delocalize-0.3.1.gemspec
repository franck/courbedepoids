# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "delocalize"
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Clemens Kofler"]
  s.date = "2011-11-22"
  s.description = "Delocalize is a tool for parsing localized dates/times and numbers."
  s.email = "clemens@railway.at"
  s.extra_rdoc_files = ["README.markdown"]
  s.files = ["README.markdown"]
  s.homepage = "http://github.com/clemens/delocalize"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "Localized date/time and number parsing"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.4"])
      s.add_development_dependency(%q<timecop>, ["~> 0.3.5"])
    else
      s.add_dependency(%q<rails>, [">= 3.0"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.4"])
      s.add_dependency(%q<timecop>, ["~> 0.3.5"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.4"])
    s.add_dependency(%q<timecop>, ["~> 0.3.5"])
  end
end
