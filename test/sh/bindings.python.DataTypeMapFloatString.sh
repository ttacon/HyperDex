#!/bin/sh

python "${HYPERDEX_SRCDIR}"/test/runner.py --space="space kv key k attributes map(float, string) v" --daemons=1 -- \
    python "${HYPERDEX_SRCDIR}"/test/python/DataTypeMapFloatString.py {HOST} {PORT}
