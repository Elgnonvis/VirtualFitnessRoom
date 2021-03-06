# -*- encoding: utf-8 -*-
# stub: date_wrapper 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "date_wrapper".freeze
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Thies Pierdola".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-02-12"
  s.description = "Datepicker wrapper for simple form.".freeze
  s.email = ["tp@centic.dk".freeze]
  s.homepage = "https://github.com/thiesp/date-picker-for-simple-form".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "Datepicker wrapper for simple form.".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<font-awesome-rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<bootstrap>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<simple_form>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<bootstrap-datepicker-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<font-awesome-rails>.freeze, [">= 0"])
    s.add_dependency(%q<bootstrap>.freeze, [">= 0"])
    s.add_dependency(%q<simple_form>.freeze, [">= 0"])
    s.add_dependency(%q<bootstrap-datepicker-rails>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.14"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
