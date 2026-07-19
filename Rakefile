# frozen_string_literal: true

require "rake/testtask"
require "fileutils"

spec = Gem::Specification.load("redis-rbs.gemspec")

desc "Build the distributable gem"
task :build do
  FileUtils.mkdir_p("pkg")
  sh "gem build redis-rbs.gemspec --output pkg/#{spec.full_name}.gem"
end

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
