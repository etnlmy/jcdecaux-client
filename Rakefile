require "bundler/gem_tasks"

require 'rspec/core/rake_task'

desc 'Default: run specs.'
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |task|
    task.pattern = "spec/*_spec.rb"
    puts "Running the specs with the following API key: #{ENV['api_key']}"
end
