desc "Run all specs in spec directory"
task :default do |t|
  options = "--colour --format progress --loadby --reverse"
  files = FileList['spec/**/*_spec.rb']
  system("spec #{options} #{files}")
end

begin
  require 'jeweler'
  project_name = 'clear_empty_attributes'
  Jeweler::Tasks.new do |gem|
    gem.name = project_name
    gem.description = gem.summary = "Save empty strings as nil to avoid lots of problems"
    gem.email = "brandon@opensoul.org"
    gem.homepage = "http://github.com/grosser/#{project_name}"
    gem.authors = ["Brandon Keepers"]
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end