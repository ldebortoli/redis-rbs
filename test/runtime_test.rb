# frozen_string_literal: true

require_relative "test_helper"

describe "redis runtime assumptions" do
  it "constructs a lazy client without contacting a server" do
    redis = Redis.new(url: "redis://127.0.0.1:1/0", timeout: 0.01)

    _(redis).must_be_instance_of(Redis)
    _(redis).must_respond_to(:get)
    _(redis).must_respond_to(:xread)
  ensure
    redis&.close
  end
end
