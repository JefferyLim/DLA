#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/jlim/Documents/school/DLA/source/sw/rsa_HLS/solution1/.autopilot/db/a.g.bc ${1+"$@"}