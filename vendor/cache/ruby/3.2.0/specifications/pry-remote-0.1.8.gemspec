# -*- encoding: utf-8 -*-
# stub: pry-remote 0.1.8 ruby lib

Gem::Specification.new do |s|
  s.name = "pry-remote".freeze
  s.version = "0.1.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Mon ouie".freeze]
  s.date = "2014-01-29"
  s.description = "Connect to Pry remotely using DRb".freeze
  s.email = "mon.ouie@gmail.com".freeze
  s.executables = ["pry-remote".freeze]
  s.files = ["bin/pry-remote".freeze]
  s.homepage = "http://github.com/Mon-Ouie/pry-remote".freeze
  s.rubygems_version = "3.4.10".freeze
  s.summary = "Connect to Pry remotely".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<slop>.freeze, ["~> 3.0"])
  s.add_runtime_dependency(%q<pry>.freeze, ["~> 0.9"])
end
