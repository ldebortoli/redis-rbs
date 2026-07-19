# redis-rbs

Generated RBS signatures for [`redis-rb`](https://github.com/redis/redis-rb).

Version `0.1.x` targets `redis >= 5.4.0, < 5.5`. It covers the concrete client, command modules, pipelines, futures, subscriptions, distributed support and auxiliary classes shipped by Redis 5.4.1. The older community signature collection for Redis 4.2 was used only as historical reference because Redis 5.x has a different client architecture and API surface.

## Installation

```ruby
gem "redis", "~> 5.4.1"
gem "redis-rbs", "~> 0.1.0", require: false
```

RBS, Steep and compatible editors discover the `.rbs` files from the installed gem's `sig/` directory. This gem adds no runtime behavior and never opens a Redis connection by itself.

## Generation and coverage

The generator runs RBS's Ruby prototype over every file shipped in `redis` and enriches exact Ruby parameter shapes with the source's YARD parameter and return types. `data/coverage.yml` records the source/signature counts and is checked by the test suite, so a new public or auxiliary method cannot disappear silently.

```sh
bundle install
bundle exec rake generate
bundle exec rake
bundle exec rake build
```

Generated signatures are committed; consumers do not need the generator or network access.

## License

MIT. Redis and redis-rb names and API facts belong to their respective projects; redis-rb is also distributed under the MIT license.
