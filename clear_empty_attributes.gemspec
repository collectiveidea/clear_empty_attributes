# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{clear_empty_attributes}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Grosser"]
  s.date = %q{2009-01-02}
  s.description = %q{Save empty strings as nil to avoid lots of problems}
  s.email = %q{grosser.michael@gmail.com}
  s.extra_rdoc_files = ["lib/clear_empty_attributes.rb", "README.markdown", "tasks/clear_empty_attributes.rake"]
  s.files = ["Manifest", "lib/clear_empty_attributes.rb", "init.rb", "Rakefile", "README.markdown", "tasks/clear_empty_attributes.rake", "clear_empty_attributes.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/grosser/clear_empty_attributes}
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
    else
      s.add_dependency(%q<activerecord>, [">= 0"])
    end
  else
    s.add_dependency(%q<activerecord>, [">= 0"])
  end
end
