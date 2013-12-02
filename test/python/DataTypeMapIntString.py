#!/usr/bin/env python
import sys
import hyperdex.client
c = hyperdex.client.Client(sys.argv[1], int(sys.argv[2]))
assert c.put('kv', 'k', {}) == True
assert c.get('kv', 'k') == {'v': {}}
assert c.put('kv', 'k', {'v': {1: 'X', 2: 'Y', 3: 'Z'}}) == True
assert c.get('kv', 'k') == {'v': {1: 'X', 2: 'Y', 3: 'Z'}}
assert c.put('kv', 'k', {'v': {}}) == True
assert c.get('kv', 'k') == {'v': {}}
