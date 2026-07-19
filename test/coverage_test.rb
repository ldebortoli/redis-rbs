# frozen_string_literal: true

require_relative "test_helper"
require "yaml"

describe "generated signature coverage" do
  before do
    @redis_root = Gem::Specification.find_by_name("redis", ">= 5.4.0", "< 5.5").full_gem_path
    @signature = File.read(File.join(ROOT, "sig/redis.rbs"))
  end

  it "declares every method name defined by the shipped Redis sources" do
    source_names = Dir[File.join(@redis_root, "lib/**/*.rb")].flat_map do |path|
      File.read(path).scan(/^\s*def\s+(?:self\.)?([^\s(]+)/).flatten
    end.uniq
    signature_names = @signature.scan(/^\s*def\s+(?:self\.)?([^: ]+):/).flatten.uniq

    _(source_names - signature_names).must_be_empty
  end

  it "records a complete reproducible source-to-signature count" do
    coverage = YAML.safe_load_file(File.join(ROOT, "data/coverage.yml"))

    _(coverage.fetch("redis_version")).must_equal("5.4.1")
    _(coverage.fetch("signature_method_declarations")).must_be :>=, coverage.fetch("source_method_definitions")
    _(coverage.fetch("typed_return_declarations")).must_be :>, 0
  end

  it "keeps representative command returns precise" do
    _(@signature).must_match(/def get: .*-> String\?$/)
    _(@signature).must_match(/def incr: .*-> Integer$/)
    _(@signature).must_match(/def sismember: .*-> bool$/)
  end
end
