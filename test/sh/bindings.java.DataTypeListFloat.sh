#!/bin/sh
javac -cp "${HYPERDEX_SRCDIR}"/bindings/java "${HYPERDEX_SRCDIR}"/test/java/DataTypeListFloat.java

python "${HYPERDEX_SRCDIR}"/test/runner.py --space="space kv key k attributes list(float) v" --daemons=1 -- \
    java -Djava.library.path="${HYPERDEX_SRCDIR}"/.libs -cp "${HYPERDEX_SRCDIR}"/bindings/java:"${HYPERDEX_SRCDIR}"/test/java DataTypeListFloat {HOST} {PORT}
