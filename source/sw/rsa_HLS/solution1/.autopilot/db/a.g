#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/linux/Documents/DLA/source/sw/rsa_HLS/solution1/.autopilot/db/a.g.bc ${1+"$@"}
