#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/linux/Documents/DLA/source/sw/BigInt/solution1/.autopilot/db/a.g.bc ${1+"$@"}