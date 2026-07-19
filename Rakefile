# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake/testtask"

desc "Regenerate signatures from the installed redis gem"
task :generate do
  ruby "script/generate"
end

Rake::TestTask.new do |task|
  task.libs << "test"
  task.pattern = "test/**/*_test.rb"
end

desc "Validate every generated RBS declaration"
task :validate do
  sh "bundle exec rbs -I sig validate"
end

task default: %i[test validate]
