#!/usr/bin/env ruby
require 'hyperdex'

def assert &block
    raise RuntimeError unless yield
end

c = HyperDex::Client::Client.new(ARGV[0], ARGV[1].to_i)
assert { c.put("kv", "k", {}) == true }
assert { c.get("kv", "k") == {:v => 0} }
assert { c.put("kv", "k", {"v" => 1}) == true }
assert { c.get("kv", "k") == {:v => 1} }
assert { c.put("kv", "k", {"v" => -1}) == true }
assert { c.get("kv", "k") == {:v => -1} }
assert { c.put("kv", "k", {"v" => 0}) == true }
assert { c.get("kv", "k") == {:v => 0} }
assert { c.put("kv", "k", {"v" => 9223372036854775807}) == true }
assert { c.get("kv", "k") == {:v => 9223372036854775807} }
assert { c.put("kv", "k", {"v" => -9223372036854775808}) == true }
assert { c.get("kv", "k") == {:v => -9223372036854775808} }
