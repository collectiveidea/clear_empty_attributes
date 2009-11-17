task :default => :spec
require 'spec/rake/spectask'
Spec::Rake::SpecTask.new {|t| t.spec_opts = ['--color']}

begin
  require 'jeweler'
  project_name = 'clear_empty_attributes'
  Jeweler::Tasks.new do |gem|
    gem.name = project_name
    gem.description = gem.summary = "Save empty strings as nil to avoid lots of problems"
    gem.email = "brandon@opensoul.org"
    gem.homepage = "http://github.com/collectiveidea/#{project_name}"
    gem.authors = ["Brandon Keepers"]
    gem.add_dependency ['activerecord']
  end

  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end