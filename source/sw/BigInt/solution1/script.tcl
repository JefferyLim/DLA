############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
############################################################
open_project BigInt
set_top bigint_math
add_files BigInt/solution1/main.cpp -cflags "-I/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/"
add_files BigInt/solution1/bigint/BigUnsignedInABase.cc -cflags "-I/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/"
add_files BigInt/solution1/bigint/BigUnsigned.cc -cflags "-I/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/"
add_files BigInt/solution1/bigint/BigIntegerUtils.cc -cflags "-I/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/"
add_files BigInt/solution1/bigint/BigIntegerAlgorithms.cc -cflags "-I/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/"
add_files BigInt/solution1/bigint/BigInteger.cc -cflags "-I/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/"
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./BigInt/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
