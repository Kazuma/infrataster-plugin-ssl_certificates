require "bundler/gem_tasks"
require "rspec/core/rake_task"

desc 'Run unit tests'
task :spec => ['spec:unit']

namespace :spec do
  RSpec::Core::RakeTask.new("unit") do |task|
    task.pattern = "./spec/*_spec.rb"
  end
end
