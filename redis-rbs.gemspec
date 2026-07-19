# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "redis-rbs"
  spec.version = File.read(File.expand_path("VERSION", __dir__)).strip
  spec.authors = ["ldebortoli"]

  spec.summary = "RBS signatures for redis-rb"
  spec.description = "Complete generated RBS signatures for the public and auxiliary APIs of redis-rb 5.4."
  spec.homepage = "https://github.com/ldebortoli/redis-rbs"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3"

  spec.files = Dir["sig/**/*.rbs", "README.md", "LICENSE.txt"]
  spec.require_paths = ["sig"]

  spec.metadata = {
    "bug_tracker_uri" => "#{spec.homepage}/issues",
    "documentation_uri" => "#{spec.homepage}/blob/main/README.md",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => spec.homepage
  }

  spec.add_runtime_dependency "redis", ">= 5.4.0", "< 5.5"
end
