#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/linux/Documents/DLA/fw/hls/BigInt/solution1/.autopilot/db/a.g.bc ${1+"$@"}
