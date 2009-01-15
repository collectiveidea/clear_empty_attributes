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
  p.url            = "http://github.com/grosser/#{porject_name}"
  p.author         = "Michael Grosser"
  p.email          = "grosser.michael@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.dependencies   = %w[activerecord]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

task :update_gemspec do
  puts "updating..."
  `rake manifest`
  `rake build_gemspec`
end