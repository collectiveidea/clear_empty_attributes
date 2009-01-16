# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{clear_empty_attributes}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brandon Keepers"]
  s.date = %q{2009-01-16}
  s.description = %q{Save empty strings as nil to avoid lots of problems}
  s.email = %q{brandon@opensoul.org}
  s.extra_rdoc_files = ["lib/clear_empty_attributes.rb", "README.markdown", "tasks/clear_empty_attributes.rake"]
  s.files = ["clear_empty_attributes.gemspec", "init.rb", "lib/clear_empty_attributes.rb", "Rakefile", "README.markdown", "spec/clear_empty_attributes_spec.rb", "spec/setup_test_model.rb", "spec/spec_helper.rb", "tasks/clear_empty_attributes.rake", "Manifest"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/collectiveidea/clear_empty_attributes}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Clear_empty_attributes", "--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{clear_empty_attributes}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Save empty strings as nil to avoid lots of problems}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>, [">= 0"])
      s.add_development_dependency(%q<echoe>, [">= 0"])
    else
      s.add_dependency(%q<activerecord>, [">= 0"])
      s.add_dependency(%q<echoe>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 0"])
    s.add_dependency(%q<echoe>, [">= 0"])
  end
end
