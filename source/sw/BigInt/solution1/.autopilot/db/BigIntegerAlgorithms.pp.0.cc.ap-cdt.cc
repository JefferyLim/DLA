#pragma line 1 "BigInt/solution1/bigint/BigIntegerAlgorithms.cc"
#pragma line 1 "BigInt/solution1/bigint/BigIntegerAlgorithms.cc" 1
#pragma line 1 "<built-in>" 1
#pragma line 1 "<built-in>" 3
#pragma line 155 "<built-in>" 3
#pragma line 1 "<command line>" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
/* autopilot_ssdm_op.h*/
/*
#-  (c) Copyright 2011-2016 Xilinx, Inc. All rights reserved.
#-
#-  This file contains confidential and proprietary information
#-  of Xilinx, Inc. and is protected under U.S. and
#-  international copyright and other intellectual property
#-  laws.
#-
#-  DISCLAIMER
#-  This disclaimer is not a license and does not grant any
#-  rights to the materials distributed herewith. Except as
#-  otherwise provided in a valid license issued to you by
#-  Xilinx, and to the maximum extent permitted by applicable
#-  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#-  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#-  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#-  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#-  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#-  (2) Xilinx shall not be liable (whether in contract or tort,
#-  including negligence, or under any other theory of
#-  liability) for any loss or damage of any kind or nature
#-  related to, arising under or in connection with these
#-  materials, including for any direct, or any indirect,
#-  special, incidental, or consequential loss or damage
#-  (including loss of data, profits, goodwill, or any type of
#-  loss or damage suffered as a result of any action brought
#-  by a third party) even if such damage or loss was
#-  reasonably foreseeable or Xilinx had been advised of the
#-  possibility of the same.
#-
#-  CRITICAL APPLICATIONS
#-  Xilinx products are not designed or intended to be fail-
#-  safe, or for use in any application requiring fail-safe
#-  performance, such as life-support or safety devices or
#-  systems, Class III medical devices, nuclear facilities,
#-  applications related to the deployment of airbags, or any
#-  other applications that could lead to death, personal
#-  injury, or severe property or environmental damage
#-  (individually and collectively, "Critical
#-  Applications"). Customer assumes the sole risk and
#-  liability of any use of Xilinx products in Critical
#-  Applications, subject only to applicable laws and
#-  regulations governing limitations on product liability.
#-
#-  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#-  PART OF THIS FILE AT ALL TIMES. 
#- ************************************************************************
#pragma empty_line
 *
 * $Id$
 */
#pragma line 145 "/home/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define AP_SPEC_ATTR __attribute__ ((pure))*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
    /****** SSDM Intrinsics: OPERATIONS ***/
    // Interface operations
#pragma empty_line
    //typedef unsigned int __attribute__ ((bitwidth(1))) _uint1_;
    typedef bool _uint1_;
#pragma empty_line
    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));
#pragma empty_line
    // Stream Intrinsics
    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    _uint1_ _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));
#pragma empty_line
    // Misc
    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_Return(...) __attribute__ ((nothrow));
#pragma empty_line
    /* SSDM Intrinsics: SPECIFICATIONS */
    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));
#pragma empty_line
    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));
    /*void* _ssdm_op_SpecProcess(...) SSDM_SPEC_ATTR;
    void* _ssdm_op_SpecEdge(...) SSDM_SPEC_ATTR; */
#pragma empty_line
    /* Presynthesis directive functions */
    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecStream(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));
#pragma empty_line
    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));
#pragma empty_line
    void __xilinx_ip_top(...) __attribute__ ((nothrow));
#pragma empty_line
#pragma empty_line
}
#pragma line 407 "/home/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
/*#define _ssdm_op_WaitUntil(X) while (!(X)) _ssdm_op_Wait(1);
#define _ssdm_op_Delayed(X) X */
#pragma line 421 "/home/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
// XSIP watermark, do not delete 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
#pragma line 6 "<command line>" 2
#pragma line 1 "<built-in>" 2
#pragma line 1 "BigInt/solution1/bigint/BigIntegerAlgorithms.cc" 2
#pragma line 1 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigIntegerAlgorithms.hh" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigInteger.hh" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigUnsigned.hh" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./NumberlikeArray.hh" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Make sure we have NULL.
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* A NumberlikeArray<Blk> object holds a heap-allocated array of Blk with a
 * length and a capacity and provides basic memory management features.
 * BigUnsigned and BigUnsignedInABase both subclass it.
 *
 * NumberlikeArray provides no information hiding.  Subclasses should use
 * nonpublic inheritance and manually expose members as desired using
 * declarations like this:
 *
 * public:
 *     NumberlikeArray< the-type-argument >::getLength;
 */
template <class Blk>
class NumberlikeArray {
public:
#pragma empty_line
 // Type for the index of a block in the array
 typedef unsigned int Index;
 // The number of bits in a block, defined below.
 static const unsigned int N;
#pragma empty_line
 // The current allocated capacity of this NumberlikeArray (in blocks)
 Index cap;
 // The actual length of the value stored in this NumberlikeArray (in blocks)
 Index len;
 // Heap-allocated array of the blocks (can be NULL if len == 0)
 Blk *blk;
#pragma empty_line
 // Constructs a ``zero'' NumberlikeArray with the given capacity.
 NumberlikeArray(Index c) : cap(c), len(0) {
  blk = (cap > 0) ? (new Blk[cap]) : 0;
 }
#pragma empty_line
 /* Constructs a zero NumberlikeArray without allocating a backing array.
	 * A subclass that doesn't know the needed capacity at initialization
	 * time can use this constructor and then overwrite blk without first
	 * deleting it. */
 NumberlikeArray() : cap(0), len(0) {
  blk = 0;
 }
#pragma empty_line
 // Destructor.  Note that `delete NULL' is a no-op.
 ~NumberlikeArray() {
  delete [] blk;
 }
#pragma empty_line
 /* Ensures that the array has at least the requested capacity; may
	 * destroy the contents. */
 void allocate(Index c);
#pragma empty_line
 /* Ensures that the array has at least the requested capacity; does not
	 * destroy the contents. */
 void allocateAndCopy(Index c);
#pragma empty_line
 // Copy constructor
 NumberlikeArray(const NumberlikeArray<Blk> &x);
#pragma empty_line
 // Assignment operator
 void operator=(const NumberlikeArray<Blk> &x);
#pragma empty_line
 // Constructor that copies from a given array of blocks
 NumberlikeArray(const Blk *b, Index blen);
#pragma empty_line
 // ACCESSORS
 Index getCapacity() const { return cap; }
 Index getLength() const { return len; }
 Blk getBlock(Index i) const { return blk[i]; }
 bool isEmpty() const { return len == 0; }
#pragma empty_line
 /* Equality comparison: checks if both objects have the same length and
	 * equal (==) array elements to that length.  Subclasses may wish to
	 * override. */
 bool operator ==(const NumberlikeArray<Blk> &x) const;
#pragma empty_line
 bool operator !=(const NumberlikeArray<Blk> &x) const {
  return !operator ==(x);
 }
};
#pragma empty_line
/* BEGIN TEMPLATE DEFINITIONS.  They are present here so that source files that
 * include this header file can generate the necessary real definitions. */
#pragma empty_line
template <class Blk>
const unsigned int NumberlikeArray<Blk>::N = 8 * sizeof(Blk);
#pragma empty_line
template <class Blk>
void NumberlikeArray<Blk>::allocate(Index c) {
 // If the requested capacity is more than the current capacity...
 if (c > cap) {
  // Delete the old number array
  delete [] blk;
  // Allocate the new array
  cap = c;
  blk = new Blk[cap];
 }
}
#pragma empty_line
template <class Blk>
void NumberlikeArray<Blk>::allocateAndCopy(Index c) {
 // If the requested capacity is more than the current capacity...
 if (c > cap) {
  Blk *oldBlk = blk;
  // Allocate the new number array
  cap = c;
  blk = new Blk[cap];
  // Copy number blocks
  Index i;
  for (i = 0; i < len; i++)
   blk[i] = oldBlk[i];
  // Delete the old array
  delete [] oldBlk;
 }
}
#pragma empty_line
template <class Blk>
NumberlikeArray<Blk>::NumberlikeArray(const NumberlikeArray<Blk> &x)
  : len(x.len) {
 // Create array
 cap = len;
 blk = new Blk[cap];
 // Copy blocks
 Index i;
 for (i = 0; i < len; i++)
  blk[i] = x.blk[i];
}
#pragma empty_line
template <class Blk>
void NumberlikeArray<Blk>::operator=(const NumberlikeArray<Blk> &x) {
 /* Calls like a = a have no effect; catch them before the aliasing
	 * causes a problem */
 if (this == &x)
  return;
 // Copy length
 len = x.len;
 // Expand array if necessary
 allocate(len);
 // Copy number blocks
 Index i;
 for (i = 0; i < len; i++)
  blk[i] = x.blk[i];
}
#pragma empty_line
template <class Blk>
NumberlikeArray<Blk>::NumberlikeArray(const Blk *b, Index blen)
  : cap(blen), len(blen) {_ssdm_SpecConstant(&N);
 // Create array
 blk = new Blk[cap];
 // Copy blocks
 Index i;
 for (i = 0; i < len; i++)
  blk[i] = b[i];
}
#pragma empty_line
template <class Blk>
bool NumberlikeArray<Blk>::operator ==(const NumberlikeArray<Blk> &x) const {
 if (len != x.len)
  // Definitely unequal.
  return false;
 else {
  // Compare corresponding blocks one by one.
  Index i;
  for (i = 0; i < len; i++)
   if (blk[i] != x.blk[i])
    return false;
  // No blocks differed, so the objects are equal.
  return true;
 }
}
#pragma line 5 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigUnsigned.hh" 2
#pragma empty_line
/* A BigUnsigned object represents a nonnegative integer of size limited only by
 * available memory.  BigUnsigneds support most mathematical operators and can
 * be converted to and from most primitive integer types.
 *
 * The number is stored as a NumberlikeArray of unsigned longs as if it were
 * written in base 256^sizeof(unsigned long).  The least significant block is
 * first, and the length is such that the most significant block is nonzero. */
class BigUnsigned : protected NumberlikeArray<unsigned long> {
#pragma empty_line
public:
 // Enumeration for the result of a comparison.
 enum CmpRes { less = -1, equal = 0, greater = 1 };
#pragma empty_line
 // BigUnsigneds are built with a Blk type of unsigned long.
 typedef unsigned long Blk;
#pragma empty_line
 typedef NumberlikeArray<Blk>::Index Index;
 NumberlikeArray<Blk>::N;
#pragma empty_line
protected:
 // Creates a BigUnsigned with a capacity; for internal use.
 BigUnsigned(int, Index c) : NumberlikeArray<Blk>(0, c) {}
#pragma empty_line
 // Decreases len to eliminate any leading zero blocks.
 void zapLeadingZeros() {
  while (len > 0 && blk[len - 1] == 0)
   len--;
 }
#pragma empty_line
public:
 // Constructs zero.
 BigUnsigned() : NumberlikeArray<Blk>() {}
#pragma empty_line
 // Copy constructor
 BigUnsigned(const BigUnsigned &x) : NumberlikeArray<Blk>(x) {}
#pragma empty_line
 // Assignment operator
 void operator=(const BigUnsigned &x) {
  NumberlikeArray<Blk>::operator =(x);
 }
#pragma empty_line
 // Constructor that copies from a given array of blocks.
 BigUnsigned(const Blk *b, Index blen) : NumberlikeArray<Blk>(b, blen) {
  // Eliminate any leading zeros we may have been passed.
  zapLeadingZeros();
 }
#pragma empty_line
 // Destructor.  NumberlikeArray does the delete for us.
 ~BigUnsigned() {}
#pragma empty_line
 // Constructors from primitive integer types
 BigUnsigned(unsigned long x);
 BigUnsigned( long x);
 BigUnsigned(unsigned int x);
 BigUnsigned( int x);
 BigUnsigned(unsigned short x);
 BigUnsigned( short x);
protected:
 // Helpers
 template <class X> void initFromPrimitive (X x);
 template <class X> void initFromSignedPrimitive(X x);
public:
#pragma empty_line
 /* Converters to primitive integer types
	 * The implicit conversion operators caused trouble, so these are now
	 * named. */
 unsigned long toUnsignedLong () const;
 long toLong () const;
 unsigned int toUnsignedInt () const;
 int toInt () const;
 unsigned short toUnsignedShort() const;
 short toShort () const;
protected:
 // Helpers
 template <class X> X convertToSignedPrimitive() const;
 template <class X> X convertToPrimitive () const;
public:
#pragma empty_line
 // BIT/BLOCK ACCESSORS
#pragma empty_line
 // Expose these from NumberlikeArray directly.
 NumberlikeArray<Blk>::getCapacity;
 NumberlikeArray<Blk>::getLength;
#pragma empty_line
 /* Returns the requested block, or 0 if it is beyond the length (as if
	 * the number had 0s infinitely to the left). */
 Blk getBlock(Index i) const { return i >= len ? 0 : blk[i]; }
 /* Sets the requested block.  The number grows or shrinks as necessary. */
 void setBlock(Index i, Blk newBlock);
#pragma empty_line
 // The number is zero if and only if the canonical length is zero.
 bool isZero() const { return NumberlikeArray<Blk>::isEmpty(); }
#pragma empty_line
 /* Returns the length of the number in bits, i.e., zero if the number
	 * is zero and otherwise one more than the largest value of bi for
	 * which getBit(bi) returns true. */
 Index bitLength() const;
 /* Get the state of bit bi, which has value 2^bi.  Bits beyond the
	 * number's length are considered to be 0. */
 bool getBit(Index bi) const {
  return (getBlock(bi / N) & (Blk(1) << (bi % N))) != 0;
 }
 /* Sets the state of bit bi to newBit.  The number grows or shrinks as
	 * necessary. */
 void setBit(Index bi, bool newBit);
#pragma empty_line
 // COMPARISONS
#pragma empty_line
 // Compares this to x like Perl's <=>
 CmpRes compareTo(const BigUnsigned &x) const;
#pragma empty_line
 // Ordinary comparison operators
 bool operator ==(const BigUnsigned &x) const {
  return NumberlikeArray<Blk>::operator ==(x);
 }
 bool operator !=(const BigUnsigned &x) const {
  return NumberlikeArray<Blk>::operator !=(x);
 }
 bool operator < (const BigUnsigned &x) const { return compareTo(x) == less ; }
 bool operator <=(const BigUnsigned &x) const { return compareTo(x) != greater; }
 bool operator >=(const BigUnsigned &x) const { return compareTo(x) != less ; }
 bool operator > (const BigUnsigned &x) const { return compareTo(x) == greater; }
#pragma empty_line
 /*
	 * BigUnsigned and BigInteger both provide three kinds of operators.
	 * Here ``big-integer'' refers to BigInteger or BigUnsigned.
	 *
	 * (1) Overloaded ``return-by-value'' operators:
	 *     +, -, *, /, %, unary -, &, |, ^, <<, >>.
	 * Big-integer code using these operators looks identical to code using
	 * the primitive integer types.  These operators take one or two
	 * big-integer inputs and return a big-integer result, which can then
	 * be assigned to a BigInteger variable or used in an expression.
	 * Example:
	 *     BigInteger a(1), b = 1;
	 *     BigInteger c = a + b;
	 *
	 * (2) Overloaded assignment operators:
	 *     +=, -=, *=, /=, %=, flipSign, &=, |=, ^=, <<=, >>=, ++, --.
	 * Again, these are used on big integers just like on ints.  They take
	 * one writable big integer that both provides an operand and receives a
	 * result.  Most also take a second read-only operand.
	 * Example:
	 *     BigInteger a(1), b(1);
	 *     a += b;
	 *
	 * (3) Copy-less operations: `add', `subtract', etc.
	 * These named methods take operands as arguments and store the result
	 * in the receiver (*this), avoiding unnecessary copies and allocations.
	 * `divideWithRemainder' is special: it both takes the dividend from and
	 * stores the remainder into the receiver, and it takes a separate
	 * object in which to store the quotient.  NOTE: If you are wondering
	 * why these don't return a value, you probably mean to use the
	 * overloaded return-by-value operators instead.
	 * 
	 * Examples:
	 *     BigInteger a(43), b(7), c, d;
	 *
	 *     c = a + b;   // Now c == 50.
	 *     c.add(a, b); // Same effect but without the two copies.
	 *
	 *     c.divideWithRemainder(b, d);
	 *     // 50 / 7; now d == 7 (quotient) and c == 1 (remainder).
	 *
	 *     // ``Aliased'' calls now do the right thing using a temporary
	 *     // copy, but see note on `divideWithRemainder'.
	 *     a.add(a, b); 
	 */
#pragma empty_line
 // COPY-LESS OPERATIONS
#pragma empty_line
 // These 8: Arguments are read-only operands, result is saved in *this.
 void add(const BigUnsigned &a, const BigUnsigned &b);
 void subtract(const BigUnsigned &a, const BigUnsigned &b);
 void multiply(const BigUnsigned &a, const BigUnsigned &b);
 void bitAnd(const BigUnsigned &a, const BigUnsigned &b);
 void bitOr(const BigUnsigned &a, const BigUnsigned &b);
 void bitXor(const BigUnsigned &a, const BigUnsigned &b);
 /* Negative shift amounts translate to opposite-direction shifts,
	 * except for -2^(8*sizeof(int)-1) which is unimplemented. */
 void bitShiftLeft(const BigUnsigned &a, int b);
 void bitShiftRight(const BigUnsigned &a, int b);
#pragma empty_line
 /* `a.divideWithRemainder(b, q)' is like `q = a / b, a %= b'.
	 * / and % use semantics similar to Knuth's, which differ from the
	 * primitive integer semantics under division by zero.  See the
	 * implementation in BigUnsigned.cc for details.
	 * `a.divideWithRemainder(b, a)' throws an exception: it doesn't make
	 * sense to write quotient and remainder into the same variable. */
 void divideWithRemainder(const BigUnsigned &b, BigUnsigned &q);
#pragma empty_line
 /* `divide' and `modulo' are no longer offered.  Use
	 * `divideWithRemainder' instead. */
#pragma empty_line
 // OVERLOADED RETURN-BY-VALUE OPERATORS
 BigUnsigned operator +(const BigUnsigned &x) const;
 BigUnsigned operator -(const BigUnsigned &x) const;
 BigUnsigned operator *(const BigUnsigned &x) const;
 BigUnsigned operator /(const BigUnsigned &x) const;
 BigUnsigned operator %(const BigUnsigned &x) const;
 /* OK, maybe unary minus could succeed in one case, but it really
	 * shouldn't be used, so it isn't provided. */
 BigUnsigned operator &(const BigUnsigned &x) const;
 BigUnsigned operator |(const BigUnsigned &x) const;
 BigUnsigned operator ^(const BigUnsigned &x) const;
 BigUnsigned operator <<(int b) const;
 BigUnsigned operator >>(int b) const;
#pragma empty_line
 // OVERLOADED ASSIGNMENT OPERATORS
 void operator +=(const BigUnsigned &x);
 void operator -=(const BigUnsigned &x);
 void operator *=(const BigUnsigned &x);
 void operator /=(const BigUnsigned &x);
 void operator %=(const BigUnsigned &x);
 void operator &=(const BigUnsigned &x);
 void operator |=(const BigUnsigned &x);
 void operator ^=(const BigUnsigned &x);
 void operator <<=(int b);
 void operator >>=(int b);
#pragma empty_line
 /* INCREMENT/DECREMENT OPERATORS
	 * To discourage messy coding, these do not return *this, so prefix
	 * and postfix behave the same. */
 void operator ++( );
 void operator ++(int);
 void operator --( );
 void operator --(int);
#pragma empty_line
 // Helper function that needs access to BigUnsigned internals
 friend Blk getShiftedBlock(const BigUnsigned &num, Index x,
   unsigned int y);
#pragma empty_line
 // See BigInteger.cc.
 template <class X>
 friend X convertBigUnsignedToPrimitiveAccess(const BigUnsigned &a);
};
#pragma empty_line
/* Implementing the return-by-value and assignment operators in terms of the
 * copy-less operations.  The copy-less operations are responsible for making
 * any necessary temporary copies to work around aliasing. */
#pragma empty_line
inline BigUnsigned BigUnsigned::operator +(const BigUnsigned &x) const {
 BigUnsigned ans;
 ans.add(*this, x);
 return ans;
}
inline BigUnsigned BigUnsigned::operator -(const BigUnsigned &x) const {
 BigUnsigned ans;
 ans.subtract(*this, x);
 return ans;
}
inline BigUnsigned BigUnsigned::operator *(const BigUnsigned &x) const {
 BigUnsigned ans;
 ans.multiply(*this, x);
 return ans;
}
inline BigUnsigned BigUnsigned::operator /(const BigUnsigned &x) const {
 //if (x.isZero()) throw "BigUnsigned::operator /: division by zero";
 BigUnsigned q, r;
 r = *this;
 r.divideWithRemainder(x, q);
 return q;
}
inline BigUnsigned BigUnsigned::operator %(const BigUnsigned &x) const {
 //if (x.isZero()) throw "BigUnsigned::operator %: division by zero";
 BigUnsigned q, r;
 r = *this;
 r.divideWithRemainder(x, q);
 return r;
}
inline BigUnsigned BigUnsigned::operator &(const BigUnsigned &x) const {
 BigUnsigned ans;
 ans.bitAnd(*this, x);
 return ans;
}
inline BigUnsigned BigUnsigned::operator |(const BigUnsigned &x) const {
 BigUnsigned ans;
 ans.bitOr(*this, x);
 return ans;
}
inline BigUnsigned BigUnsigned::operator ^(const BigUnsigned &x) const {
 BigUnsigned ans;
 ans.bitXor(*this, x);
 return ans;
}
inline BigUnsigned BigUnsigned::operator <<(int b) const {
 BigUnsigned ans;
 ans.bitShiftLeft(*this, b);
 return ans;
}
inline BigUnsigned BigUnsigned::operator >>(int b) const {
 BigUnsigned ans;
 ans.bitShiftRight(*this, b);
 return ans;
}
#pragma empty_line
inline void BigUnsigned::operator +=(const BigUnsigned &x) {
 add(*this, x);
}
inline void BigUnsigned::operator -=(const BigUnsigned &x) {
 subtract(*this, x);
}
inline void BigUnsigned::operator *=(const BigUnsigned &x) {
 multiply(*this, x);
}
inline void BigUnsigned::operator /=(const BigUnsigned &x) {
 //if (x.isZero()) throw "BigUnsigned::operator /=: division by zero";
 /* The following technique is slightly faster than copying *this first
	 * when x is large. */
 BigUnsigned q;
 divideWithRemainder(x, q);
 // *this contains the remainder, but we overwrite it with the quotient.
 *this = q;
}
inline void BigUnsigned::operator %=(const BigUnsigned &x) {
 //if (x.isZero()) throw "BigUnsigned::operator %=: division by zero";
 BigUnsigned q;
 // Mods *this by x.  Don't care about quotient left in q.
 divideWithRemainder(x, q);
}
inline void BigUnsigned::operator &=(const BigUnsigned &x) {
 bitAnd(*this, x);
}
inline void BigUnsigned::operator |=(const BigUnsigned &x) {
 bitOr(*this, x);
}
inline void BigUnsigned::operator ^=(const BigUnsigned &x) {
 bitXor(*this, x);
}
inline void BigUnsigned::operator <<=(int b) {
 bitShiftLeft(*this, b);
}
inline void BigUnsigned::operator >>=(int b) {
 bitShiftRight(*this, b);
}
#pragma empty_line
/* Templates for conversions of BigUnsigned to and from primitive integers.
 * BigInteger.cc needs to instantiate convertToPrimitive, and the uses in
 * BigUnsigned.cc didn't do the trick; I think g++ inlined convertToPrimitive
 * instead of generating linkable instantiations.  So for consistency, I put
 * all the templates here. */
#pragma empty_line
// CONSTRUCTION FROM PRIMITIVE INTEGERS
#pragma empty_line
/* Initialize this BigUnsigned from the given primitive integer.  The same
 * pattern works for all primitive integer types, so I put it into a template to
 * reduce code duplication.  (Don't worry: this is protected and we instantiate
 * it only with primitive integer types.)  Type X could be signed, but x is
 * known to be nonnegative. */
template <class X>
void BigUnsigned::initFromPrimitive(X x) {
 if (x == 0)
  ; // NumberlikeArray already initialized us to zero.
 else {
  // Create a single block.  blk is NULL; no need to delete it.
  cap = 1;
  blk = new Blk[1];
  len = 1;
  blk[0] = Blk(x);
 }
}
#pragma empty_line
/* Ditto, but first check that x is nonnegative.  I could have put the check in
 * initFromPrimitive and let the compiler optimize it out for unsigned-type
 * instantiations, but I wanted to avoid the warning stupidly issued by g++ for
 * a condition that is constant in *any* instantiation, even if not in all. */
template <class X>
void BigUnsigned::initFromSignedPrimitive(X x) {
//	if (x < 0)
//		throw "BigUnsigned constructor: "
//			"Cannot construct a BigUnsigned from a negative number";
//	else
  initFromPrimitive(x);
}
#pragma empty_line
// CONVERSION TO PRIMITIVE INTEGERS
#pragma empty_line
/* Template with the same idea as initFromPrimitive.  This might be slightly
 * slower than the previous version with the masks, but it's much shorter and
 * clearer, which is the library's stated goal. */
template <class X>
X BigUnsigned::convertToPrimitive() const {
 if (len == 0)
  // The number is zero; return zero.
  return 0;
 else if (len == 1) {
  // The single block might fit in an X.  Try the conversion.
  X x = X(blk[0]);
  // Make sure the result accurately represents the block.
  if (Blk(x) == blk[0])
   // Successful conversion.
   return x;
  // Otherwise fall through.
 }
 //throw "BigUnsigned::to<Primitive>: "
 //	"Value is too big to fit in the requested type";
}
#pragma empty_line
/* Wrap the above in an x >= 0 test to make sure we got a nonnegative result,
 * not a negative one that happened to convert back into the correct nonnegative
 * one.  (E.g., catch incorrect conversion of 2^31 to the long -2^31.)  Again,
 * separated to avoid a g++ warning. */
template <class X>
X BigUnsigned::convertToSignedPrimitive() const {
 X x = convertToPrimitive<X>();
 if (x >= 0)
  return x;
 //else
  //throw "BigUnsigned::to(Primitive): "
  //	"Value is too big to fit in the requested type";
}
#pragma line 5 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigInteger.hh" 2
#pragma empty_line
/* A BigInteger object represents a signed integer of size limited only by
 * available memory.  BigUnsigneds support most mathematical operators and can
 * be converted to and from most primitive integer types.
 *
 * A BigInteger is just an aggregate of a BigUnsigned and a sign.  (It is no
 * longer derived from BigUnsigned because that led to harmful implicit
 * conversions.) */
class BigInteger {
#pragma empty_line
public:
 typedef BigUnsigned::Blk Blk;
 typedef BigUnsigned::Index Index;
 typedef BigUnsigned::CmpRes CmpRes;
 static const CmpRes
  less = BigUnsigned::less ,
  equal = BigUnsigned::equal ,
  greater = BigUnsigned::greater;
 // Enumeration for the sign of a BigInteger.
 enum Sign { negative = -1, zero = 0, positive = 1 };
#pragma empty_line
protected:
 Sign sign;
 BigUnsigned mag;
#pragma empty_line
public:
 // Constructs zero.
 BigInteger() : sign(zero), mag() {}
#pragma empty_line
 // Copy constructor
 BigInteger(const BigInteger &x) : sign(x.sign), mag(x.mag) {};
#pragma empty_line
 // Assignment operator
 void operator=(const BigInteger &x);
#pragma empty_line
 // Constructor that copies from a given array of blocks with a sign.
 BigInteger(const Blk *b, Index blen, Sign s);
#pragma empty_line
 // Nonnegative constructor that copies from a given array of blocks.
 BigInteger(const Blk *b, Index blen) : mag(b, blen) {
  sign = mag.isZero() ? zero : positive;
 }
#pragma empty_line
 // Constructor from a BigUnsigned and a sign
 BigInteger(const BigUnsigned &x, Sign s);
#pragma empty_line
 // Nonnegative constructor from a BigUnsigned
 BigInteger(const BigUnsigned &x) : mag(x) {
  sign = mag.isZero() ? zero : positive;
 }
#pragma empty_line
 // Constructors from primitive integer types
 BigInteger(unsigned long x);
 BigInteger( long x);
 BigInteger(unsigned int x);
 BigInteger( int x);
 BigInteger(unsigned short x);
 BigInteger( short x);
#pragma empty_line
 /* Converters to primitive integer types
	 * The implicit conversion operators caused trouble, so these are now
	 * named. */
 unsigned long toUnsignedLong () const;
 long toLong () const;
 unsigned int toUnsignedInt () const;
 int toInt () const;
 unsigned short toUnsignedShort() const;
 short toShort () const;
protected:
 // Helper
 template <class X> X convertToUnsignedPrimitive() const;
 template <class X, class UX> X convertToSignedPrimitive() const;
public:
#pragma empty_line
 // ACCESSORS
 Sign getSign() const { return sign; }
 /* The client can't do any harm by holding a read-only reference to the
	 * magnitude. */
 const BigUnsigned &getMagnitude() const { return mag; }
#pragma empty_line
 // Some accessors that go through to the magnitude
 Index getLength() const { return mag.getLength(); }
 Index getCapacity() const { return mag.getCapacity(); }
 Blk getBlock(Index i) const { return mag.getBlock(i); }
 bool isZero() const { return sign == zero; } // A bit special
#pragma empty_line
 // COMPARISONS
#pragma empty_line
 // Compares this to x like Perl's <=>
 CmpRes compareTo(const BigInteger &x) const;
#pragma empty_line
 // Ordinary comparison operators
 bool operator ==(const BigInteger &x) const {
  return sign == x.sign && mag == x.mag;
 }
 bool operator !=(const BigInteger &x) const { return !operator ==(x); };
 bool operator < (const BigInteger &x) const { return compareTo(x) == less ; }
 bool operator <=(const BigInteger &x) const { return compareTo(x) != greater; }
 bool operator >=(const BigInteger &x) const { return compareTo(x) != less ; }
 bool operator > (const BigInteger &x) const { return compareTo(x) == greater; }
#pragma empty_line
 // OPERATORS -- See the discussion in BigUnsigned.hh.
 void add (const BigInteger &a, const BigInteger &b);
 void subtract(const BigInteger &a, const BigInteger &b);
 void multiply(const BigInteger &a, const BigInteger &b);
 /* See the comment on BigUnsigned::divideWithRemainder.  Semantics
	 * differ from those of primitive integers when negatives and/or zeros
	 * are involved. */
 void divideWithRemainder(const BigInteger &b, BigInteger &q);
 void negate(const BigInteger &a);
#pragma empty_line
 /* Bitwise operators are not provided for BigIntegers.  Use
	 * getMagnitude to get the magnitude and operate on that instead. */
#pragma empty_line
 BigInteger operator +(const BigInteger &x) const;
 BigInteger operator -(const BigInteger &x) const;
 BigInteger operator *(const BigInteger &x) const;
 BigInteger operator /(const BigInteger &x) const;
 BigInteger operator %(const BigInteger &x) const;
 BigInteger operator -() const;
#pragma empty_line
 void operator +=(const BigInteger &x);
 void operator -=(const BigInteger &x);
 void operator *=(const BigInteger &x);
 void operator /=(const BigInteger &x);
 void operator %=(const BigInteger &x);
 void flipSign();
#pragma empty_line
 // INCREMENT/DECREMENT OPERATORS
 void operator ++( );
 void operator ++(int);
 void operator --( );
 void operator --(int);
};
#pragma empty_line
// NORMAL OPERATORS
/* These create an object to hold the result and invoke
 * the appropriate put-here operation on it, passing
 * this and x.  The new object is then returned. */
inline BigInteger BigInteger::operator +(const BigInteger &x) const {
 BigInteger ans;
 ans.add(*this, x);
 return ans;
}
inline BigInteger BigInteger::operator -(const BigInteger &x) const {
 BigInteger ans;
 ans.subtract(*this, x);
 return ans;
}
inline BigInteger BigInteger::operator *(const BigInteger &x) const {
 BigInteger ans;
 ans.multiply(*this, x);
 return ans;
}
inline BigInteger BigInteger::operator /(const BigInteger &x) const {
 //if (x.isZero()) throw "BigInteger::operator /: division by zero";
 BigInteger q, r;
 r = *this;
 r.divideWithRemainder(x, q);
 return q;
}
inline BigInteger BigInteger::operator %(const BigInteger &x) const {
 //if (x.isZero()) throw "BigInteger::operator %: division by zero";
 BigInteger q, r;
 r = *this;
 r.divideWithRemainder(x, q);
 return r;
}
inline BigInteger BigInteger::operator -() const {
 BigInteger ans;
 ans.negate(*this);
 return ans;
}
#pragma empty_line
/*
 * ASSIGNMENT OPERATORS
 * 
 * Now the responsibility for making a temporary copy if necessary
 * belongs to the put-here operations.  See Assignment Operators in
 * BigUnsigned.hh.
 */
inline void BigInteger::operator +=(const BigInteger &x) {
 add(*this, x);
}
inline void BigInteger::operator -=(const BigInteger &x) {
 subtract(*this, x);
}
inline void BigInteger::operator *=(const BigInteger &x) {
 multiply(*this, x);
}
inline void BigInteger::operator /=(const BigInteger &x) {
 //if (x.isZero()) throw "BigInteger::operator /=: division by zero";
 /* The following technique is slightly faster than copying *this first
	 * when x is large. */
 BigInteger q;
 divideWithRemainder(x, q);
 // *this contains the remainder, but we overwrite it with the quotient.
 *this = q;
}
inline void BigInteger::operator %=(const BigInteger &x) {
 //if (x.isZero()) throw "BigInteger::operator %=: division by zero";
 BigInteger q;
 // Mods *this by x.  Don't care about quotient left in q.
 divideWithRemainder(x, q);
}
// This one is trivial
inline void BigInteger::flipSign() {
 sign = Sign(-sign);
}
#pragma line 5 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigIntegerAlgorithms.hh" 2
#pragma empty_line
/* Some mathematical algorithms for big integers.
 * This code is new and, as such, experimental. */
#pragma empty_line
// Returns the greatest common divisor of a and b.
BigUnsigned gcd(BigUnsigned a, BigUnsigned b);
#pragma empty_line
/* Extended Euclidean algorithm.
 * Given m and n, finds gcd g and numbers r, s such that r*m + s*n == g. */
void extendedEuclidean(BigInteger m, BigInteger n,
  BigInteger &g, BigInteger &r, BigInteger &s);
#pragma empty_line
/* Returns the multiplicative inverse of x modulo n, or throws an exception if
 * they have a common factor. */
BigUnsigned modinv(const BigInteger &x, const BigUnsigned &n);
#pragma empty_line
// Returns (base ^ exponent) % modulus.
BigUnsigned modexp(const BigInteger &base, const BigUnsigned &exponent,
  const BigUnsigned &modulus);
#pragma line 2 "BigInt/solution1/bigint/BigIntegerAlgorithms.cc" 2
#pragma empty_line
BigUnsigned gcd(BigUnsigned a, BigUnsigned b) {
 BigUnsigned trash;
 // Neat in-place alternating technique.
 for (;;) {
  if (b.isZero())
   return a;
  a.divideWithRemainder(b, trash);
  if (a.isZero())
   return b;
  b.divideWithRemainder(a, trash);
 }
}
#pragma empty_line
void extendedEuclidean(BigInteger m, BigInteger n,
  BigInteger &g, BigInteger &r, BigInteger &s) {
 //if (&g == &r || &g == &s || &r == &s)
 //	throw "BigInteger extendedEuclidean: Outputs are aliased";
 BigInteger r1(1), s1(0), r2(0), s2(1), q;
 /* Invariants:
	 * r1*m(orig) + s1*n(orig) == m(current)
	 * r2*m(orig) + s2*n(orig) == n(current) */
 for (;;) {
  if (n.isZero()) {
   r = r1; s = s1; g = m;
   return;
  }
  // Subtract q times the second invariant from the first invariant.
  m.divideWithRemainder(n, q);
  r1 -= q*r2; s1 -= q*s2;
#pragma empty_line
  if (m.isZero()) {
   r = r2; s = s2; g = n;
   return;
  }
  // Subtract q times the first invariant from the second invariant.
  n.divideWithRemainder(m, q);
  r2 -= q*r1; s2 -= q*s1;
 }
}
#pragma empty_line
BigUnsigned modinv(const BigInteger &x, const BigUnsigned &n) {
 BigInteger g, r, s;
 extendedEuclidean(x, n, g, r, s);
 if (g == 1)
  // r*x + s*n == 1, so r*x === 1 (mod n), so r is the answer.
  return (r % n).getMagnitude(); // (r % n) will be nonnegative
 //else
 //	throw "BigInteger modinv: x and n have a common factor";
}
#pragma empty_line
BigUnsigned modexp(const BigInteger &base, const BigUnsigned &exponent,
  const BigUnsigned &modulus) {
 BigUnsigned ans = 1, base2 = (base % modulus).getMagnitude();
 BigUnsigned::Index i = exponent.bitLength();
 // For each bit of the exponent, most to least significant...
 while (i > 0) {
  i--;
  // Square.
  ans *= ans;
  ans %= modulus;
  // And multiply if the bit is a 1.
  if (exponent.getBit(i)) {
   ans *= base2;
   ans %= modulus;
  }
 }
 return ans;
}