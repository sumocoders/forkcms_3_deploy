# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "forkcms_3_deploy"
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tijs Verkoyen", "Sam Tubbax"]
  s.date = "2012-10-16"
  s.description = "Deployment for Fork 3.x.x with Capistrano"
  s.email = "info@sumocoders.be"
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    "README.md",
    "Rakefile",
    "VERSION",
    "forkcms_3_deploy.gemspec",
    "lib/forkcms_3_deploy.rb",
    "lib/forkcms_3_deploy/defaults.rb",
    "lib/forkcms_3_deploy/forkcms.rb",
    "lib/forkcms_3_deploy/overwrites.rb"
  ]
  s.homepage = "https://github.com/sumocoders/forkcms_3_deploy"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.24"
  s.summary = "Deployment for Fork 3.x.x with Capistrano"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 2.0.0"])
    else
      s.add_dependency(%q<capistrano>, [">= 2.0.0"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 2.0.0"])
  end
end

