require 'rubygems'
require 'echoe'

desc "Run all specs in spec directory"
task :test do |t|
  options = "--colour --format progress --loadby --reverse"
  files = FileList['spec/**/*_spec.rb']
  system("spec #{options} #{files}")
end

#Gemspec
porject_name = 'clear_empty_attributes'
Echoe.new(porject_name , '0.1') do |p|
  p.description    = "Save empty strings as nil to avoid lots of problems"
  p.url            = "http://github.com/collectiveidea/#{porject_name}"
  p.author         = "Brandon Keepers"
  p.email          = "brandon@opensoul.org"
  p.dependencies   = %w[activerecord]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

task :update_gemspec => [:manifest, :build_gemspec]