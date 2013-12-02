#!/usr/bin/env python
import sys
import hyperdex.client
c = hyperdex.client.Client(sys.argv[1], int(sys.argv[2]))
assert c.put('kv', 'k', {}) == True
assert c.get('kv', 'k') == {'v': {}}
assert c.put('kv', 'k', {'v': {1: 7, 2: 8, 3: 9}}) == True
assert c.get('kv', 'k') == {'v': {1: 7, 2: 8, 3: 9}}
assert c.put('kv', 'k', {'v': {}}) == True
assert c.get('kv', 'k') == {'v': {}}
