#!/usr/bin/env ruby
require 'hyperdex'

def assert &block
    raise RuntimeError unless yield
end

c = HyperDex::Client::Client.new(ARGV[0], ARGV[1].to_i)
assert { c.put("kv", "k", {}) == true }
assert { c.get("kv", "k") == {:v => (Set.new [])} }
assert { c.put("kv", "k", {"v" => (Set.new [1, 2, 3])}) == true }
assert { c.get("kv", "k") == {:v => (Set.new [1, 2, 3])} }
assert { c.put("kv", "k", {"v" => (Set.new [])}) == true }
assert { c.get("kv", "k") == {:v => (Set.new [])} }
