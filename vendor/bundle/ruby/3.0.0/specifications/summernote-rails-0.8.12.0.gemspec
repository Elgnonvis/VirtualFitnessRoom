# -*- encoding: utf-8 -*-
# stub: summernote-rails 0.8.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "summernote-rails".freeze
  s.version = "0.8.12.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Hyo Seong Choi".freeze]
  s.date = "2019-06-04"
  s.description = "This gem packages the editor Summernote for Rails' assets pipeline".freeze
  s.email = ["rorlab@gmail.com".freeze]
  s.homepage = "https://github.com/summernote/summernote-rails".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.22".freeze
  s.summary = "Gemify Summernote for Ruby on Rails".freeze

  s.installed_by_version = "3.2.22" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
