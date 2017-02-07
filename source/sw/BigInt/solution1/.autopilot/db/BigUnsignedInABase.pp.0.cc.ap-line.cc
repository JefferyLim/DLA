#pragma line 1 "BigInt/solution1/bigint/BigUnsignedInABase.cc"
#pragma line 1 "BigInt/solution1/bigint/BigUnsignedInABase.cc" 1
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
#pragma line 1 "BigInt/solution1/bigint/BigUnsignedInABase.cc" 2
#pragma line 1 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigUnsignedInABase.hh" 1
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
  : cap(blen), len(blen) {
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
#pragma line 5 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigUnsignedInABase.hh" 2
#pragma line 1 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigUnsigned.hh" 1
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
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
#pragma line 6 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigUnsignedInABase.hh" 2
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 1 3
// Components for manipulating sequences of characters -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004,
// 2005, 2006, 2007, 2009, 2010, 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file include/string
 *  This is a Standard C++ Library header.
 */
#pragma empty_line
//
// ISO C++ 14882: 21  Strings library
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 38 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 1 3
// Predefined symbols and macros -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010, 2011 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/c++config.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iosfwd}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// The current version of the C++ library in compressed ISO date format.
#pragma empty_line
#pragma empty_line
// Macros for various attributes.
//   _GLIBCXX_PURE
//   _GLIBCXX_CONST
//   _GLIBCXX_NORETURN
//   _GLIBCXX_NOTHROW
//   _GLIBCXX_VISIBILITY
#pragma line 63 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Macros for visibility attributes.
//   _GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY
//   _GLIBCXX_VISIBILITY
#pragma line 76 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Macros for deprecated attributes.
//   _GLIBCXX_USE_DEPRECATED
//   _GLIBCXX_DEPRECATED
#pragma line 91 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Macro for constexpr, to support in mixed 03/0x mode.
#pragma line 102 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Macro for extern template, ie controling template linkage via use
// of extern keyword on template declaration. As documented in the g++
// manual, it inhibits all implicit instantiations and is used
// throughout the library to avoid multiple weak definitions for
// required types that are already explicitly instantiated in the
// library binary. This substantially reduces the binary size of
// resulting executables.
// Special case: _GLIBCXX_EXTERN_TEMPLATE == -1 disallows extern
// templates only in basic_string, thus activating its debug-mode
// checks even at -O0.
#pragma empty_line
#pragma empty_line
/*
  Outline of libstdc++ namespaces.
#pragma empty_line
  namespace std
  {
    namespace __debug { }
    namespace __parallel { }
    namespace __profile { }
    namespace __cxx1998 { }
#pragma empty_line
    namespace __detail { }
#pragma empty_line
    namespace rel_ops { }
#pragma empty_line
    namespace tr1
    {
      namespace placeholders { }
      namespace regex_constants { }
      namespace __detail { }
    }
#pragma empty_line
    namespace decimal { }
#pragma empty_line
    namespace chrono { }
    namespace placeholders { }
    namespace regex_constants { }
    namespace this_thread { }
  }
#pragma empty_line
  namespace abi { }
#pragma empty_line
  namespace __gnu_cxx
  {
    namespace __detail { }
  }
#pragma empty_line
  For full details see:
  http://gcc.gnu.org/onlinedocs/libstdc++/latest-doxygen/namespaces.html
*/
namespace std
{
  typedef long unsigned int size_t;
  typedef long int ptrdiff_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
// Defined if inline namespaces are used for versioning.
#pragma empty_line
#pragma empty_line
// Inline namespace for symbol versioning.
#pragma line 208 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Inline namespaces for special modes: debug, parallel, profile.
#pragma line 255 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Macros for namespace scope. Either namespace std:: or the name
// of some nested namespace within it corresponding to the active mode.
// _GLIBCXX_STD_A
// _GLIBCXX_STD_C
//
// Macros for opening/closing conditional namespaces.
// _GLIBCXX_BEGIN_NAMESPACE_ALGO
// _GLIBCXX_END_NAMESPACE_ALGO
// _GLIBCXX_BEGIN_NAMESPACE_CONTAINER
// _GLIBCXX_END_NAMESPACE_CONTAINER
#pragma line 307 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// GLIBCXX_ABI Deprecated
// Define if compatibility should be provided for -mlong-double-64.
#pragma empty_line
#pragma empty_line
// Inline namespace for long double 128 mode.
#pragma line 326 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Assert.
#pragma line 352 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// Macros for race detectors.
// _GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(A) and
// _GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(A) should be used to explain
// atomic (lock-free) synchronization to race detectors:
// the race detector will infer a happens-before arc from the former to the
// latter when they share the same argument pointer.
//
// The most frequent use case for these macros (and the only case in the
// current implementation of the library) is atomic reference counting:
//   void _M_remove_reference()
//   {
//     _GLIBCXX_SYNCHRONIZATION_HAPPENS_BEFORE(&this->_M_refcount);
//     if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount, -1) <= 0)
//       {
//         _GLIBCXX_SYNCHRONIZATION_HAPPENS_AFTER(&this->_M_refcount);
//         _M_destroy(__a);
//       }
//   }
// The annotations in this example tell the race detector that all memory
// accesses occurred when the refcount was positive do not race with
// memory accesses which occurred after the refcount became zero.
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Macros for C linkage: define extern "C" linkage only when using C++.
#pragma line 390 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 3
// First includes.
#pragma empty_line
// Pick up any OS-specific definitions.
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/os_defines.h" 1 3
// Specific definitions for GNU/Linux  -*- C++ -*-
#pragma empty_line
// Copyright (C) 2000, 2001, 2002, 2003, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/os_defines.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iosfwd}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// System-specific #define, typedefs, corrections, etc, go here.  This
// file will come before all others.
#pragma empty_line
// This keeps isanum, et al from being propagated as macros.
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/features.h" 1 3 4
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* These are defined by the user (or the compiler)
   to specify the desired environment:
#pragma empty_line
   __STRICT_ANSI__	ISO Standard C.
   _ISOC99_SOURCE	Extensions to ISO C89 from ISO C99.
   _ISOC11_SOURCE	Extensions to ISO C99 from ISO C11.
   _POSIX_SOURCE	IEEE Std 1003.1.
   _POSIX_C_SOURCE	If ==1, like _POSIX_SOURCE; if >=2 add IEEE Std 1003.2;
			if >=199309L, add IEEE Std 1003.1b-1993;
			if >=199506L, add IEEE Std 1003.1c-1995;
			if >=200112L, all of IEEE 1003.1-2004
			if >=200809L, all of IEEE 1003.1-2008
   _XOPEN_SOURCE	Includes POSIX and XPG things.  Set to 500 if
			Single Unix conformance is wanted, to 600 for the
			sixth revision, to 700 for the seventh revision.
   _XOPEN_SOURCE_EXTENDED XPG things and X/Open Unix extensions.
   _LARGEFILE_SOURCE	Some more functions for correct standard I/O.
   _LARGEFILE64_SOURCE	Additional functionality from LFS for large files.
   _FILE_OFFSET_BITS=N	Select default filesystem interface.
   _BSD_SOURCE		ISO C, POSIX, and 4.3BSD things.
   _SVID_SOURCE		ISO C, POSIX, and SVID things.
   _ATFILE_SOURCE	Additional *at interfaces.
   _GNU_SOURCE		All of the above, plus GNU extensions.
   _DEFAULT_SOURCE	The default set of features (taking precedence over
			__STRICT_ANSI__).
   _REENTRANT		Select additionally reentrant object.
   _THREAD_SAFE		Same as _REENTRANT, often used by other systems.
   _FORTIFY_SOURCE	If set to numeric value > 0 additional security
			measures are defined, according to level.
#pragma empty_line
   The `-ansi' switch to the GNU C compiler, and standards conformance
   options such as `-std=c99', define __STRICT_ANSI__.  If none of
   these are defined, or if _DEFAULT_SOURCE is defined, the default is
   to have _SVID_SOURCE, _BSD_SOURCE, and _POSIX_SOURCE set to one and
   _POSIX_C_SOURCE set to 200809L.  If more than one of these are
   defined, they accumulate.  For example __STRICT_ANSI__,
   _POSIX_SOURCE and _POSIX_C_SOURCE together give you ISO C, 1003.1,
   and 1003.2, but nothing else.
#pragma empty_line
   These are defined by this file and are used by the
   header files to decide what to declare or define:
#pragma empty_line
   __USE_ISOC11		Define ISO C11 things.
   __USE_ISOC99		Define ISO C99 things.
   __USE_ISOC95		Define ISO C90 AMD1 (C95) things.
   __USE_POSIX		Define IEEE Std 1003.1 things.
   __USE_POSIX2		Define IEEE Std 1003.2 things.
   __USE_POSIX199309	Define IEEE Std 1003.1, and .1b things.
   __USE_POSIX199506	Define IEEE Std 1003.1, .1b, .1c and .1i things.
   __USE_XOPEN		Define XPG things.
   __USE_XOPEN_EXTENDED	Define X/Open Unix things.
   __USE_UNIX98		Define Single Unix V2 things.
   __USE_XOPEN2K        Define XPG6 things.
   __USE_XOPEN2KXSI     Define XPG6 XSI things.
   __USE_XOPEN2K8       Define XPG7 things.
   __USE_XOPEN2K8XSI    Define XPG7 XSI things.
   __USE_LARGEFILE	Define correct standard I/O things.
   __USE_LARGEFILE64	Define LFS things with separate names.
   __USE_FILE_OFFSET64	Define 64bit interface as default.
   __USE_BSD		Define 4.3BSD things.
   __USE_SVID		Define SVID things.
   __USE_MISC		Define things common to BSD and System V Unix.
   __USE_ATFILE		Define *at interfaces and AT_* constants for them.
   __USE_GNU		Define GNU extensions.
   __USE_REENTRANT	Define reentrant/thread-safe *_r functions.
   __USE_FORTIFY_LEVEL	Additional security measures used, according to level.
#pragma empty_line
   The macros `__GNU_LIBRARY__', `__GLIBC__', and `__GLIBC_MINOR__' are
   defined by this file unconditionally.  `__GNU_LIBRARY__' is provided
   only for compatibility.  All new code should use the other symbols
   to test for features.
#pragma empty_line
   All macros listed above as possibly being defined by this file are
   explicitly undefined if they are not explicitly defined.
   Feature-test macros that are not defined by the user or compiler
   but are implied by the other feature-test macros defined (or by the
   lack of any definitions) are defined by the file.  */
#pragma empty_line
#pragma empty_line
/* Undefine everything, so we get a clean slate.  */
#pragma line 128 "/usr/include/features.h" 3 4
/* Suppress kernel-name space pollution unless user expressedly asks
   for it.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Convenience macros to test the versions of glibc and gcc.
   Use them like this:
   #if __GNUC_PREREQ (2,8)
   ... code requiring gcc 2.8 or later ...
   #endif
   Note - they won't work for gcc1 or glibc1, since the _MINOR macros
   were not defined then.  */
#pragma line 149 "/usr/include/features.h" 3 4
/* If _GNU_SOURCE was defined by the user, turn on all the other features.  */
#pragma line 177 "/usr/include/features.h" 3 4
/* If nothing (other than _GNU_SOURCE and _DEFAULT_SOURCE) is defined,
   define _DEFAULT_SOURCE, _BSD_SOURCE and _SVID_SOURCE.  */
#pragma line 193 "/usr/include/features.h" 3 4
/* This is to enable the ISO C11 extension.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is to enable the ISO C99 extension.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is to enable the ISO C90 Amendment 1:1995 extension.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is to enable compatibility for ISO C++11.
#pragma empty_line
   So far g++ does not provide a macro.  Check the temporary macro for
   now, too.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* If none of the ANSI/POSIX macros are defined, or if _DEFAULT_SOURCE
   is defined, use POSIX.1-2008 (or another version depending on
   _XOPEN_SOURCE).  */
#pragma line 350 "/usr/include/features.h" 3 4
/* Get definitions of __STDC_* predefined macros, if the compiler has
   not preincluded this header automatically.  */
#pragma empty_line
#pragma line 1 "/usr/include/stdc-predef.h" 1 3 4
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
#pragma empty_line
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
#pragma line 52 "/usr/include/stdc-predef.h" 3 4
/* wchar_t uses ISO/IEC 10646 (2nd ed., published 2011-03-15) /
   Unicode 6.0.  */
#pragma empty_line
#pragma empty_line
/* We do not support C11 <threads.h>.  */
#pragma line 353 "/usr/include/features.h" 2 3 4
#pragma empty_line
/* This macro indicates that the installed library is the GNU C Library.
   For historic reasons the value now is 6 and this will stay from now
   on.  The use of this variable is deprecated.  Use __GLIBC__ and
   __GLIBC_MINOR__ now (see below) when you want to test for a specific
   GNU C library version and use the values in <gnu/lib-names.h> to get
   the sonames of the shared libraries.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Major and minor version number of the GNU C library package.  Use
   these macros to test for features in specific releases.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is here only because every header file already includes this one.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
/* Copyright (C) 1992-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* We are almost always included from features.h. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The GNU libc does not support any K&R compilers or the traditional mode
   of ISO C compilers anymore.  Check for some of the combinations not
   anymore supported.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Some user header file might have defined this before.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* All functions, except those with callbacks or those that
   synchronize memory, are leaf functions.  */
#pragma line 49 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC can always grok prototypes.  For C++ programs we add throw()
   to help it optimize the function calls.  But this works only with
   gcc 2.8.x and egcs.  For gcc 3.2 and up we even mark C functions
   as non-throwing using a function attribute since programs can use
   the -fexceptions options for C code as well.  */
#pragma line 80 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* These two macros are not used in glibc anymore.  They are kept here
   only because some other projects expect the macros to be defined.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* For these things, GCC behaves the ANSI way normally,
   and the non-ANSI way under -traditional.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is not a typedef so `const __ptr_t' does the right thing.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* C++ needs to know that types and declarations are C, not C++.  */
#pragma line 106 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* The standard library needs the functions from the ISO C90 standard
   in the std namespace.  At the same time we want to be safe for
   future changes and we include the ISO C99 code in the non-standard
   namespace __c99.  The C++ wrapper header take case of adding the
   definitions to the global namespace.  */
#pragma line 119 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* For compatibility we do not add the declarations into any
   namespace.  They will end up in the global namespace which is what
   old code expects.  */
#pragma line 131 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Fortify support.  */
#pragma line 148 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Support for flexible arrays.  */
#pragma empty_line
/* GCC 2.97 supports C99 flexible array members.  */
#pragma line 166 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* __asm__ ("xyz") is used throughout the headers to rename functions
   at the assembly language level.  This is wrapped by the __REDIRECT
   macro, in order to support compilers that can do this some other
   way.  When compilers don't support asm-names at all, we have to do
   preprocessor tricks instead (which don't have exactly the right
   semantics, but it's the best we can do).
#pragma empty_line
   Example:
   int __REDIRECT(setpgrp, (__pid_t pid, __pid_t pgrp), setpgid); */
#pragma line 193 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/*
#elif __SOME_OTHER_COMPILER__
#pragma empty_line
# define __REDIRECT(name, proto, alias) name proto; \
	_Pragma("let " #name " = " #alias)
*/
#pragma empty_line
#pragma empty_line
/* GCC has various useful declarations that can be made with the
   `__attribute__' syntax.  All of the ways we use this do fine if
   they are omitted for compilers that don't understand it. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.96 development the `malloc' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Tell the compiler which arguments to an allocation function
   indicate the size of the allocation.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.96 development the `pure' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This declaration tells the compiler that the value is constant.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 3.1 development the `used' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.  */
#pragma line 253 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* gcc allows marking deprecated functions.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.8 development the `format_arg' attribute
   for functions was introduced.  We don't want to use it unconditionally
   (although this would be possible) since it generates warnings.
   If several `format_arg' attributes are given for the same function, in
   gcc-3.0 and older, all but the last one are ignored.  In newer gccs,
   all designated arguments are considered.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* At some point during the gcc 2.97 development the `strfmon' format
   attribute for functions was introduced.  We don't want to use it
   unconditionally (although this would be possible) since it
   generates warnings.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The nonull function attribute allows to mark pointer parameters which
   must not be NULL.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* If fortification mode, we warn about unused results of certain
   function calls which can lead to problems.  */
#pragma line 306 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* Forces a function to be always inlined.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Associate error messages with the source location of the call site rather
   than with the source location inside the function.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* One of these will be defined if the __gnu_inline__ attribute is
   available.  In C++, __GNUC_GNU_INLINE__ will be defined even though
   __inline does not use the GNU inlining rules.  If neither macro is
   defined, this version of GCC only supports GNU inline semantics. */
#pragma line 339 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
/* GCC 4.3 and above allow passing all anonymous arguments of an
   __extern_always_inline function to some other vararg function.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* It is possible to compile containing GCC extensions even if GCC is
   run in pedantic mode if the uses are carefully marked using the
   `__extension__' keyword.  But this is not generally available before
   version 2.8.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* __restrict is known in EGCS 1.2 and above. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* ISO C99 also allows to declare arrays as non-overlapping.  The syntax is
     array_name[restrict]
   GCC 3.1 supports this.  */
#pragma line 385 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 386 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
#pragma line 375 "/usr/include/features.h" 2 3 4
#pragma empty_line
#pragma empty_line
/* If we don't have __REDIRECT, prototypes will be missing if
   __USE_FILE_OFFSET64 but not __USE_LARGEFILE[64]. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Decide whether we can define 'extern inline' functions in headers.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This is here only because every header file already includes this one.
   Get the definitions of all the appropriate `__stub_FUNCTION' symbols.
   <gnu/stubs.h> contains `#define __stub_FUNCTION' when FUNCTION is a stub
   that will always return failure (and set errno to ENOSYS).  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
/* This file is automatically generated.
   This file selects the right generated file of `__stub_FUNCTION' macros
   based on the architecture being compiled for.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
/* This file is automatically generated.
   It defines a symbol `__stub_FUNCTION' for each function
   in the C library which is a stub, meaning it will fail
   every time called, usually setting errno to ENOSYS.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
#pragma line 399 "/usr/include/features.h" 2 3 4
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/os_defines.h" 2 3
#pragma line 394 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 2 3
#pragma empty_line
// Pick up any CPU-specific definitions.
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/cpu_defines.h" 1 3
// Specific definitions for generic platforms  -*- C++ -*-
#pragma empty_line
// Copyright (C) 2005, 2009, 2010 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/cpu_defines.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iosfwd}
 */
#pragma line 397 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++config.h" 2 3
#pragma empty_line
// If platform uses neither visibility nor psuedo-visibility,
// specify empty default for namespace annotation macros.
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Certain function definitions that are meant to be overridable from
// user code are decorated with this macro.  For some targets, this
// macro causes these definitions to be weak.
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// The remainder of the prewritten config is automatic; all the
// user hooks are listed above.
#pragma empty_line
// Create a boolean flag to be used to determine if --fast-math is set.
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// This marks string literals in header files to be extracted for eventual
// translation.  It is primarily used for messages in thrown exceptions; see
// src/functexcept.cc.  We use __N because the more traditional _N is used
// for something else under certain OSes (see BADNAMES).
#pragma empty_line
#pragma empty_line
// For example, <windows.h> is known to #define min and max as macros...
#pragma empty_line
#pragma empty_line
#pragma empty_line
// End of prewritten config; the settings discovered at configure time follow.
/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.ac by autoheader.  */
#pragma empty_line
/* Define to 1 if you have the `acosf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `acosl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `asinf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `asinl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if the target assembler supports .symver directive. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `atan2f' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `atan2l' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `atanf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `atanl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if the target assembler supports thread-local storage. */
/* #undef _GLIBCXX_HAVE_CC_TLS */
#pragma empty_line
/* Define to 1 if you have the `ceilf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `ceill' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <complex.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `cosf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `coshf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `coshl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `cosl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <dlfcn.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define if EBADMSG exists. */
#pragma empty_line
#pragma empty_line
/* Define if ECANCELED exists. */
#pragma empty_line
#pragma empty_line
/* Define if EIDRM exists. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <endian.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define if ENODATA exists. */
#pragma empty_line
#pragma empty_line
/* Define if ENOLINK exists. */
#pragma empty_line
#pragma empty_line
/* Define if ENOSR exists. */
#pragma empty_line
#pragma empty_line
/* Define if ENOSTR exists. */
#pragma empty_line
#pragma empty_line
/* Define if ENOTRECOVERABLE exists. */
#pragma empty_line
#pragma empty_line
/* Define if ENOTSUP exists. */
#pragma empty_line
#pragma empty_line
/* Define if EOVERFLOW exists. */
#pragma empty_line
#pragma empty_line
/* Define if EOWNERDEAD exists. */
#pragma empty_line
#pragma empty_line
/* Define if EPROTO exists. */
#pragma empty_line
#pragma empty_line
/* Define if ETIME exists. */
#pragma empty_line
#pragma empty_line
/* Define if ETXTBSY exists. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <execinfo.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `expf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `expl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `fabsf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `fabsl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <fenv.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `finite' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `finitef' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `finitel' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <float.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `floorf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `floorl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `fmodf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `fmodl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `fpclass' function. */
/* #undef _GLIBCXX_HAVE_FPCLASS */
#pragma empty_line
/* Define to 1 if you have the <fp.h> header file. */
/* #undef _GLIBCXX_HAVE_FP_H */
#pragma empty_line
/* Define to 1 if you have the `frexpf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `frexpl' function. */
#pragma empty_line
#pragma empty_line
/* Define if _Unwind_GetIPInfo is available. */
#pragma empty_line
#pragma empty_line
/* Define if gthr-default.h exists (meaning that threading support is
   enabled). */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `hypot' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `hypotf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `hypotl' function. */
#pragma empty_line
#pragma empty_line
/* Define if you have the iconv() function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <ieeefp.h> header file. */
/* #undef _GLIBCXX_HAVE_IEEEFP_H */
#pragma empty_line
/* Define if int64_t is available in <stdint.h>. */
#pragma empty_line
#pragma empty_line
/* Define if int64_t is a long. */
#pragma empty_line
#pragma empty_line
/* Define if int64_t is a long long. */
/* #undef _GLIBCXX_HAVE_INT64_T_LONG_LONG */
#pragma empty_line
/* Define to 1 if you have the <inttypes.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `isinf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `isinff' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `isinfl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `isnan' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `isnanf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `isnanl' function. */
#pragma empty_line
#pragma empty_line
/* Defined if iswblank exists. */
#pragma empty_line
#pragma empty_line
/* Define if LC_MESSAGES is available in <locale.h>. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `ldexpf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `ldexpl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <libintl.h> header file. */
#pragma empty_line
#pragma empty_line
/* Only used in build directory testsuite_hooks.h. */
#pragma empty_line
#pragma empty_line
/* Only used in build directory testsuite_hooks.h. */
#pragma empty_line
#pragma empty_line
/* Only used in build directory testsuite_hooks.h. */
#pragma empty_line
#pragma empty_line
/* Only used in build directory testsuite_hooks.h. */
#pragma empty_line
#pragma empty_line
/* Only used in build directory testsuite_hooks.h. */
#pragma empty_line
#pragma empty_line
/* Define if futex syscall is available. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <locale.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `log10f' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `log10l' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `logf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `logl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <machine/endian.h> header file. */
/* #undef _GLIBCXX_HAVE_MACHINE_ENDIAN_H */
#pragma empty_line
/* Define to 1 if you have the <machine/param.h> header file. */
/* #undef _GLIBCXX_HAVE_MACHINE_PARAM_H */
#pragma empty_line
/* Define if mbstate_t exists in wchar.h. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <memory.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `modf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `modff' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `modfl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <nan.h> header file. */
/* #undef _GLIBCXX_HAVE_NAN_H */
#pragma empty_line
/* Define if poll is available in <poll.h>. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `powf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `powl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `qfpclass' function. */
/* #undef _GLIBCXX_HAVE_QFPCLASS */
#pragma empty_line
/* Define to 1 if you have the `setenv' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sincos' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sincosf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sincosl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sinf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sinhf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sinhl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sinl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sqrtf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `sqrtl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <stdbool.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <stdint.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <stdlib.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define if strerror_l is available in <string.h>. */
/* #undef _GLIBCXX_HAVE_STRERROR_L */
#pragma empty_line
/* Define if strerror_r is available in <string.h>. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <strings.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <string.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `strtof' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `strtold' function. */
#pragma empty_line
#pragma empty_line
/* Define if strxfrm_l is available in <string.h>. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if the target runtime linker supports binding the same symbol
   to different versions. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/filio.h> header file. */
/* #undef _GLIBCXX_HAVE_SYS_FILIO_H */
#pragma empty_line
/* Define to 1 if you have the <sys/ioctl.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/ipc.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/isa_defs.h> header file. */
/* #undef _GLIBCXX_HAVE_SYS_ISA_DEFS_H */
#pragma empty_line
/* Define to 1 if you have the <sys/machine.h> header file. */
/* #undef _GLIBCXX_HAVE_SYS_MACHINE_H */
#pragma empty_line
/* Define to 1 if you have the <sys/param.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/resource.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/sem.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/stat.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/time.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/types.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <sys/uio.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define if S_IFREG is available in <sys/stat.h>. */
/* #undef _GLIBCXX_HAVE_S_IFREG */
#pragma empty_line
/* Define if S_IFREG is available in <sys/stat.h>. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `tanf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `tanhf' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `tanhl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `tanl' function. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <tgmath.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if the target supports thread-local storage. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <unistd.h> header file. */
#pragma empty_line
#pragma empty_line
/* Defined if vfwscanf exists. */
#pragma empty_line
#pragma empty_line
/* Defined if vswscanf exists. */
#pragma empty_line
#pragma empty_line
/* Defined if vwscanf exists. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <wchar.h> header file. */
#pragma empty_line
#pragma empty_line
/* Defined if wcstof exists. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the <wctype.h> header file. */
#pragma empty_line
#pragma empty_line
/* Define if writev is available in <sys/uio.h>. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if you have the `_acosf' function. */
/* #undef _GLIBCXX_HAVE__ACOSF */
#pragma empty_line
/* Define to 1 if you have the `_acosl' function. */
/* #undef _GLIBCXX_HAVE__ACOSL */
#pragma empty_line
/* Define to 1 if you have the `_asinf' function. */
/* #undef _GLIBCXX_HAVE__ASINF */
#pragma empty_line
/* Define to 1 if you have the `_asinl' function. */
/* #undef _GLIBCXX_HAVE__ASINL */
#pragma empty_line
/* Define to 1 if you have the `_atan2f' function. */
/* #undef _GLIBCXX_HAVE__ATAN2F */
#pragma empty_line
/* Define to 1 if you have the `_atan2l' function. */
/* #undef _GLIBCXX_HAVE__ATAN2L */
#pragma empty_line
/* Define to 1 if you have the `_atanf' function. */
/* #undef _GLIBCXX_HAVE__ATANF */
#pragma empty_line
/* Define to 1 if you have the `_atanl' function. */
/* #undef _GLIBCXX_HAVE__ATANL */
#pragma empty_line
/* Define to 1 if you have the `_ceilf' function. */
/* #undef _GLIBCXX_HAVE__CEILF */
#pragma empty_line
/* Define to 1 if you have the `_ceill' function. */
/* #undef _GLIBCXX_HAVE__CEILL */
#pragma empty_line
/* Define to 1 if you have the `_cosf' function. */
/* #undef _GLIBCXX_HAVE__COSF */
#pragma empty_line
/* Define to 1 if you have the `_coshf' function. */
/* #undef _GLIBCXX_HAVE__COSHF */
#pragma empty_line
/* Define to 1 if you have the `_coshl' function. */
/* #undef _GLIBCXX_HAVE__COSHL */
#pragma empty_line
/* Define to 1 if you have the `_cosl' function. */
/* #undef _GLIBCXX_HAVE__COSL */
#pragma empty_line
/* Define to 1 if you have the `_expf' function. */
/* #undef _GLIBCXX_HAVE__EXPF */
#pragma empty_line
/* Define to 1 if you have the `_expl' function. */
/* #undef _GLIBCXX_HAVE__EXPL */
#pragma empty_line
/* Define to 1 if you have the `_fabsf' function. */
/* #undef _GLIBCXX_HAVE__FABSF */
#pragma empty_line
/* Define to 1 if you have the `_fabsl' function. */
/* #undef _GLIBCXX_HAVE__FABSL */
#pragma empty_line
/* Define to 1 if you have the `_finite' function. */
/* #undef _GLIBCXX_HAVE__FINITE */
#pragma empty_line
/* Define to 1 if you have the `_finitef' function. */
/* #undef _GLIBCXX_HAVE__FINITEF */
#pragma empty_line
/* Define to 1 if you have the `_finitel' function. */
/* #undef _GLIBCXX_HAVE__FINITEL */
#pragma empty_line
/* Define to 1 if you have the `_floorf' function. */
/* #undef _GLIBCXX_HAVE__FLOORF */
#pragma empty_line
/* Define to 1 if you have the `_floorl' function. */
/* #undef _GLIBCXX_HAVE__FLOORL */
#pragma empty_line
/* Define to 1 if you have the `_fmodf' function. */
/* #undef _GLIBCXX_HAVE__FMODF */
#pragma empty_line
/* Define to 1 if you have the `_fmodl' function. */
/* #undef _GLIBCXX_HAVE__FMODL */
#pragma empty_line
/* Define to 1 if you have the `_fpclass' function. */
/* #undef _GLIBCXX_HAVE__FPCLASS */
#pragma empty_line
/* Define to 1 if you have the `_frexpf' function. */
/* #undef _GLIBCXX_HAVE__FREXPF */
#pragma empty_line
/* Define to 1 if you have the `_frexpl' function. */
/* #undef _GLIBCXX_HAVE__FREXPL */
#pragma empty_line
/* Define to 1 if you have the `_hypot' function. */
/* #undef _GLIBCXX_HAVE__HYPOT */
#pragma empty_line
/* Define to 1 if you have the `_hypotf' function. */
/* #undef _GLIBCXX_HAVE__HYPOTF */
#pragma empty_line
/* Define to 1 if you have the `_hypotl' function. */
/* #undef _GLIBCXX_HAVE__HYPOTL */
#pragma empty_line
/* Define to 1 if you have the `_isinf' function. */
/* #undef _GLIBCXX_HAVE__ISINF */
#pragma empty_line
/* Define to 1 if you have the `_isinff' function. */
/* #undef _GLIBCXX_HAVE__ISINFF */
#pragma empty_line
/* Define to 1 if you have the `_isinfl' function. */
/* #undef _GLIBCXX_HAVE__ISINFL */
#pragma empty_line
/* Define to 1 if you have the `_isnan' function. */
/* #undef _GLIBCXX_HAVE__ISNAN */
#pragma empty_line
/* Define to 1 if you have the `_isnanf' function. */
/* #undef _GLIBCXX_HAVE__ISNANF */
#pragma empty_line
/* Define to 1 if you have the `_isnanl' function. */
/* #undef _GLIBCXX_HAVE__ISNANL */
#pragma empty_line
/* Define to 1 if you have the `_ldexpf' function. */
/* #undef _GLIBCXX_HAVE__LDEXPF */
#pragma empty_line
/* Define to 1 if you have the `_ldexpl' function. */
/* #undef _GLIBCXX_HAVE__LDEXPL */
#pragma empty_line
/* Define to 1 if you have the `_log10f' function. */
/* #undef _GLIBCXX_HAVE__LOG10F */
#pragma empty_line
/* Define to 1 if you have the `_log10l' function. */
/* #undef _GLIBCXX_HAVE__LOG10L */
#pragma empty_line
/* Define to 1 if you have the `_logf' function. */
/* #undef _GLIBCXX_HAVE__LOGF */
#pragma empty_line
/* Define to 1 if you have the `_logl' function. */
/* #undef _GLIBCXX_HAVE__LOGL */
#pragma empty_line
/* Define to 1 if you have the `_modf' function. */
/* #undef _GLIBCXX_HAVE__MODF */
#pragma empty_line
/* Define to 1 if you have the `_modff' function. */
/* #undef _GLIBCXX_HAVE__MODFF */
#pragma empty_line
/* Define to 1 if you have the `_modfl' function. */
/* #undef _GLIBCXX_HAVE__MODFL */
#pragma empty_line
/* Define to 1 if you have the `_powf' function. */
/* #undef _GLIBCXX_HAVE__POWF */
#pragma empty_line
/* Define to 1 if you have the `_powl' function. */
/* #undef _GLIBCXX_HAVE__POWL */
#pragma empty_line
/* Define to 1 if you have the `_qfpclass' function. */
/* #undef _GLIBCXX_HAVE__QFPCLASS */
#pragma empty_line
/* Define to 1 if you have the `_sincos' function. */
/* #undef _GLIBCXX_HAVE__SINCOS */
#pragma empty_line
/* Define to 1 if you have the `_sincosf' function. */
/* #undef _GLIBCXX_HAVE__SINCOSF */
#pragma empty_line
/* Define to 1 if you have the `_sincosl' function. */
/* #undef _GLIBCXX_HAVE__SINCOSL */
#pragma empty_line
/* Define to 1 if you have the `_sinf' function. */
/* #undef _GLIBCXX_HAVE__SINF */
#pragma empty_line
/* Define to 1 if you have the `_sinhf' function. */
/* #undef _GLIBCXX_HAVE__SINHF */
#pragma empty_line
/* Define to 1 if you have the `_sinhl' function. */
/* #undef _GLIBCXX_HAVE__SINHL */
#pragma empty_line
/* Define to 1 if you have the `_sinl' function. */
/* #undef _GLIBCXX_HAVE__SINL */
#pragma empty_line
/* Define to 1 if you have the `_sqrtf' function. */
/* #undef _GLIBCXX_HAVE__SQRTF */
#pragma empty_line
/* Define to 1 if you have the `_sqrtl' function. */
/* #undef _GLIBCXX_HAVE__SQRTL */
#pragma empty_line
/* Define to 1 if you have the `_tanf' function. */
/* #undef _GLIBCXX_HAVE__TANF */
#pragma empty_line
/* Define to 1 if you have the `_tanhf' function. */
/* #undef _GLIBCXX_HAVE__TANHF */
#pragma empty_line
/* Define to 1 if you have the `_tanhl' function. */
/* #undef _GLIBCXX_HAVE__TANHL */
#pragma empty_line
/* Define to 1 if you have the `_tanl' function. */
/* #undef _GLIBCXX_HAVE__TANL */
#pragma empty_line
/* Define as const if the declaration of iconv() needs const. */
#pragma empty_line
#pragma empty_line
/* Define to the sub-directory in which libtool stores uninstalled libraries.
   */
#pragma empty_line
#pragma empty_line
/* Name of package */
/* #undef _GLIBCXX_PACKAGE */
#pragma empty_line
/* Define to the address where bug reports for this package should be sent. */
#pragma empty_line
#pragma empty_line
/* Define to the full name of this package. */
#pragma empty_line
#pragma empty_line
/* Define to the full name and version of this package. */
#pragma empty_line
#pragma empty_line
/* Define to the one symbol short name of this package. */
#pragma empty_line
#pragma empty_line
/* Define to the home page for this package. */
#pragma empty_line
#pragma empty_line
/* Define to the version of this package. */
#pragma empty_line
#pragma empty_line
/* The size of `char', as computed by sizeof. */
/* #undef SIZEOF_CHAR */
#pragma empty_line
/* The size of `int', as computed by sizeof. */
/* #undef SIZEOF_INT */
#pragma empty_line
/* The size of `long', as computed by sizeof. */
/* #undef SIZEOF_LONG */
#pragma empty_line
/* The size of `short', as computed by sizeof. */
/* #undef SIZEOF_SHORT */
#pragma empty_line
/* The size of `void *', as computed by sizeof. */
/* #undef SIZEOF_VOID_P */
#pragma empty_line
/* Define to 1 if you have the ANSI C header files. */
#pragma empty_line
#pragma empty_line
/* Version number of package */
/* #undef _GLIBCXX_VERSION */
#pragma empty_line
/* Define if builtin atomic operations for bool are supported on this host. */
#pragma empty_line
#pragma empty_line
/* Define if builtin atomic operations for short are supported on this host.
   */
#pragma empty_line
#pragma empty_line
/* Define if builtin atomic operations for int are supported on this host. */
#pragma empty_line
#pragma empty_line
/* Define if builtin atomic operations for long long are supported on this
   host. */
#pragma empty_line
#pragma empty_line
/* Define to use concept checking code from the boost libraries. */
/* #undef _GLIBCXX_CONCEPT_CHECKS */
#pragma empty_line
/* Define if a fully dynamic basic_string is wanted. */
/* #undef _GLIBCXX_FULLY_DYNAMIC_STRING */
#pragma empty_line
/* Define if gthreads library is available. */
#pragma empty_line
#pragma empty_line
/* Define to 1 if a full hosted library is built, or 0 if freestanding. */
#pragma empty_line
#pragma empty_line
/* Define if compatibility should be provided for -mlong-double-64. */
#pragma empty_line
/* Define if ptrdiff_t is int. */
/* #undef _GLIBCXX_PTRDIFF_T_IS_INT */
#pragma empty_line
/* Define if using setrlimit to set resource limits during "make check" */
#pragma empty_line
#pragma empty_line
/* Define if size_t is unsigned int. */
/* #undef _GLIBCXX_SIZE_T_IS_UINT */
#pragma empty_line
/* Define if the compiler is configured for setjmp/longjmp exceptions. */
/* #undef _GLIBCXX_SJLJ_EXCEPTIONS */
#pragma empty_line
/* Define to the value of the EOF integer constant. */
#pragma empty_line
#pragma empty_line
/* Define to the value of the SEEK_CUR integer constant. */
#pragma empty_line
#pragma empty_line
/* Define to the value of the SEEK_END integer constant. */
#pragma empty_line
#pragma empty_line
/* Define to use symbol versioning in the shared library. */
#pragma empty_line
#pragma empty_line
/* Define to use darwin versioning in the shared library. */
/* #undef _GLIBCXX_SYMVER_DARWIN */
#pragma empty_line
/* Define to use GNU versioning in the shared library. */
#pragma empty_line
#pragma empty_line
/* Define to use GNU namespace versioning in the shared library. */
/* #undef _GLIBCXX_SYMVER_GNU_NAMESPACE */
#pragma empty_line
/* Define to use Sun versioning in the shared library. */
/* #undef _GLIBCXX_SYMVER_SUN */
#pragma empty_line
/* Define if C99 functions or macros from <wchar.h>, <math.h>, <complex.h>,
   <stdio.h>, and <stdlib.h> can be used or exposed. */
#pragma empty_line
#pragma empty_line
/* Define if C99 functions in <complex.h> should be used in <complex>. Using
   compiler builtins for these functions requires corresponding C99 library
   functions to be present. */
#pragma empty_line
#pragma empty_line
/* Define if C99 functions in <complex.h> should be used in <tr1/complex>.
   Using compiler builtins for these functions requires corresponding C99
   library functions to be present. */
#pragma empty_line
#pragma empty_line
/* Define if C99 functions in <ctype.h> should be imported in <tr1/cctype> in
   namespace std::tr1. */
#pragma empty_line
#pragma empty_line
/* Define if C99 functions in <fenv.h> should be imported in <tr1/cfenv> in
   namespace std::tr1. */
#pragma empty_line
#pragma empty_line
/* Define if C99 functions in <inttypes.h> should be imported in
   <tr1/cinttypes> in namespace std::tr1. */
#pragma empty_line
#pragma empty_line
/* Define if wchar_t C99 functions in <inttypes.h> should be imported in
   <tr1/cinttypes> in namespace std::tr1. */
#pragma empty_line
#pragma empty_line
/* Define if C99 functions or macros in <math.h> should be imported in <cmath>
   in namespace std. */
#pragma empty_line
#pragma empty_line
/* Define if C99 functions or macros in <math.h> should be imported in
   <tr1/cmath> in namespace std::tr1. */
#pragma empty_line
#pragma empty_line
/* Define if C99 types in <stdint.h> should be imported in <tr1/cstdint> in
   namespace std::tr1. */
#pragma empty_line
#pragma empty_line
/* Defined if clock_gettime has monotonic clock support. */
/* #undef _GLIBCXX_USE_CLOCK_MONOTONIC */
#pragma empty_line
/* Defined if clock_gettime has realtime clock support. */
/* #undef _GLIBCXX_USE_CLOCK_REALTIME */
#pragma empty_line
/* Define if ISO/IEC TR 24733 decimal floating point types are supported on
   this host. */
#pragma empty_line
#pragma empty_line
/* Defined if gettimeofday is available. */
#pragma empty_line
#pragma empty_line
/* Define if LFS support is available. */
#pragma empty_line
#pragma empty_line
/* Define if code specialized for long long should be used. */
#pragma empty_line
#pragma empty_line
/* Defined if nanosleep is available. */
/* #undef _GLIBCXX_USE_NANOSLEEP */
#pragma empty_line
/* Define if NLS translations are to be used. */
#pragma empty_line
#pragma empty_line
/* Define if /dev/random and /dev/urandom are available for the random_device
   of TR1 (Chapter 5.1). */
#pragma empty_line
#pragma empty_line
/* Defined if sched_yield is available. */
/* #undef _GLIBCXX_USE_SCHED_YIELD */
#pragma empty_line
/* Define if code specialized for wchar_t should be used. */
#pragma line 40 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stringfwd.h" 1 3
// String support -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009,
// 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/stringfwd.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{string}
 */
#pragma empty_line
//
// ISO C++ 14882: 21 Strings library
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 39 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stringfwd.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _Alloc>
    class allocator;
#pragma empty_line
  /**
   *  @defgroup strings Strings
   *
   *  @{
  */
#pragma empty_line
  template<class _CharT>
    struct char_traits;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
           typename _Alloc = allocator<_CharT> >
    class basic_string;
#pragma empty_line
  template<> struct char_traits<char>;
#pragma empty_line
  typedef basic_string<char> string; /// A string of @c char
#pragma empty_line
#pragma empty_line
  template<> struct char_traits<wchar_t>;
#pragma empty_line
  typedef basic_string<wchar_t> wstring; /// A string of @c wchar_t
#pragma line 82 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stringfwd.h" 3
  /** @}  */
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 1 3
// Character Traits for use by standard string and iostream -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/char_traits.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{string}
 */
#pragma empty_line
//
// ISO C++ 14882: 21  Strings library
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 39 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 1 3
// Core algorithmic facilities -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010,
// 2011 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996-1998
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file bits/stl_algobase.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{algorithm}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/functexcept.h" 1 3
// Function-Based Exception Support -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2004, 2005, 2008, 2009, 2010, 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/functexcept.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{exception}
 *
 *  This header provides support for -fno-exceptions.
 */
#pragma empty_line
//
// ISO C++ 14882: 19.1  Exception classes
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/exception_defines.h" 1 3
// -fno-exceptions Support -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2006, 2007, 2008, 2009,
// 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/exception_defines.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{exception}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Iff -fno-exceptions, transform error handling code to work without it.
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/functexcept.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // Helper for exception objects in <except>
  void
  __throw_bad_exception(void) __attribute__((__noreturn__));
#pragma empty_line
  // Helper for exception objects in <new>
  void
  __throw_bad_alloc(void) __attribute__((__noreturn__));
#pragma empty_line
  // Helper for exception objects in <typeinfo>
  void
  __throw_bad_cast(void) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_bad_typeid(void) __attribute__((__noreturn__));
#pragma empty_line
  // Helpers for exception objects in <stdexcept>
  void
  __throw_logic_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_domain_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_invalid_argument(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_length_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_out_of_range(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_runtime_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_range_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_overflow_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_underflow_error(const char*) __attribute__((__noreturn__));
#pragma empty_line
  // Helpers for exception objects in <ios>
  void
  __throw_ios_failure(const char*) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_system_error(int) __attribute__((__noreturn__));
#pragma empty_line
  void
  __throw_future_error(int) __attribute__((__noreturn__));
#pragma empty_line
  // Helpers for exception objects in <functional>
  void
  __throw_bad_function_call() __attribute__((__noreturn__));
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 62 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 1 3
// The  -*- C++ -*- type traits classes for internal use in libstdc++
#pragma empty_line
// Copyright (C) 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/cpp_type_traits.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{ext/type_traits}
 */
#pragma empty_line
// Written by Gabriel Dos Reis <dosreis@cmla.ens-cachan.fr>
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 36 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
//
// This file provides some compile-time information about various types.
// These representations were designed, on purpose, to be constant-expressions
// and not types as found in <bits/type_traits.h>.  In particular, they
// can be used in control structures and the optimizer hopefully will do
// the obvious thing.
//
// Why integral expressions, and not functions nor types?
// Firstly, these compile-time entities are used as template-arguments
// so function return values won't work:  We need compile-time entities.
// We're left with types and constant  integral expressions.
// Secondly, from the point of view of ease of use, type-based compile-time
// information is -not- *that* convenient.  On has to write lots of
// overloaded functions and to hope that the compiler will select the right
// one. As a net effect, the overall structure isn't very clear at first
// glance.
// Thirdly, partial ordering and overload resolution (of function templates)
// is highly costly in terms of compiler-resource.  It is a Good Thing to
// keep these resource consumption as least as possible.
//
// See valarray_array.h for a case use.
//
// -- Gaby (dosreis@cmla.ens-cachan.fr) 2000-03-06.
//
// Update 2005: types are also provided and <bits/type_traits.h> has been
// removed.
//
#pragma empty_line
// Forward declaration hack, should really include this from somewhere.
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _Iterator, typename _Container>
    class __normal_iterator;
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  struct __true_type { };
  struct __false_type { };
#pragma empty_line
  template<bool>
    struct __truth_type
    { typedef __false_type __type; };
#pragma empty_line
  template<>
    struct __truth_type<true>
    { typedef __true_type __type; };
#pragma empty_line
  // N.B. The conversions to bool are needed due to the issue
  // explained in c++/19404.
  template<class _Sp, class _Tp>
    struct __traitor
    {
      enum { __value = bool(_Sp::__value) || bool(_Tp::__value) };
      typedef typename __truth_type<__value>::__type __type;
    };
#pragma empty_line
  // Compare for equality of types.
  template<typename, typename>
    struct __are_same
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __are_same<_Tp, _Tp>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  // Holds if the template-argument is a void type.
  template<typename _Tp>
    struct __is_void
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_void<void>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  //
  // Integer types
  //
  template<typename _Tp>
    struct __is_integer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  // Thirteen specializations (yes there are eleven standard integer
  // types; <em>long long</em> and <em>unsigned long long</em> are
  // supported as extensions)
  template<>
    struct __is_integer<bool>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_integer<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma line 198 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
  template<>
    struct __is_integer<short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned short>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned int>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_integer<unsigned long long>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  //
  // Floating point types
  //
  template<typename _Tp>
    struct __is_floating
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  // three specializations (float, double and 'long double')
  template<>
    struct __is_floating<float>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_floating<long double>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  //
  // Pointer types
  //
  template<typename _Tp>
    struct __is_pointer
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Tp>
    struct __is_pointer<_Tp*>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  //
  // Normal iterator type
  //
  template<typename _Tp>
    struct __is_normal_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<typename _Iterator, typename _Container>
    struct __is_normal_iterator< __gnu_cxx::__normal_iterator<_Iterator,
             _Container> >
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  //
  // An arithmetic type is an integer type or a floating point type
  //
  template<typename _Tp>
    struct __is_arithmetic
    : public __traitor<__is_integer<_Tp>, __is_floating<_Tp> >
    { };
#pragma empty_line
  //
  // A fundamental type is `void' or and arithmetic type
  //
  template<typename _Tp>
    struct __is_fundamental
    : public __traitor<__is_void<_Tp>, __is_arithmetic<_Tp> >
    { };
#pragma empty_line
  //
  // A scalar type is an arithmetic type or a pointer type
  // 
  template<typename _Tp>
    struct __is_scalar
    : public __traitor<__is_arithmetic<_Tp>, __is_pointer<_Tp> >
    { };
#pragma empty_line
  //
  // For use in std::copy and std::find overloads for streambuf iterators.
  //
  template<typename _Tp>
    struct __is_char
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_char<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<>
    struct __is_char<wchar_t>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
#pragma empty_line
  template<typename _Tp>
    struct __is_byte
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<signed char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  template<>
    struct __is_byte<unsigned char>
    {
      enum { __value = 1 };
      typedef __true_type __type;
    };
#pragma empty_line
  //
  // Move iterator type
  //
  template<typename _Tp>
    struct __is_move_iterator
    {
      enum { __value = 0 };
      typedef __false_type __type;
    };
#pragma line 422 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cpp_type_traits.h" 3
} // namespace
#pragma line 63 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/type_traits.h" 1 3
// -*- C++ -*-
#pragma empty_line
// Copyright (C) 2005, 2006, 2007, 2009, 2010, 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the terms
// of the GNU General Public License as published by the Free Software
// Foundation; either version 3, or (at your option) any later
// version.
#pragma empty_line
// This library is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file ext/type_traits.h
 *  This file is a GNU extension to the Standard C++ Library.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 33 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/type_traits.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // Define a nested type if some predicate holds.
  template<bool, typename>
    struct __enable_if
    { };
#pragma empty_line
  template<typename _Tp>
    struct __enable_if<true, _Tp>
    { typedef _Tp __type; };
#pragma empty_line
#pragma empty_line
  // Conditional expression for types. If true, first, if false, second.
  template<bool _Cond, typename _Iftrue, typename _Iffalse>
    struct __conditional_type
    { typedef _Iftrue __type; };
#pragma empty_line
  template<typename _Iftrue, typename _Iffalse>
    struct __conditional_type<false, _Iftrue, _Iffalse>
    { typedef _Iffalse __type; };
#pragma empty_line
#pragma empty_line
  // Given an integral builtin type, return the corresponding unsigned type.
  template<typename _Tp>
    struct __add_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __add_unsigned<char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<signed char>
    { typedef unsigned char __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<short>
    { typedef unsigned short __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<int>
    { typedef unsigned int __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long>
    { typedef unsigned long __type; };
#pragma empty_line
  template<>
    struct __add_unsigned<long long>
    { typedef unsigned long long __type; };
#pragma empty_line
  // Declare but don't define.
  template<>
    struct __add_unsigned<bool>;
#pragma empty_line
  template<>
    struct __add_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
  // Given an integral builtin type, return the corresponding signed type.
  template<typename _Tp>
    struct __remove_unsigned
    {
    private:
      typedef __enable_if<std::__is_integer<_Tp>::__value, _Tp> __if_type;
#pragma empty_line
    public:
      typedef typename __if_type::__type __type;
    };
#pragma empty_line
  template<>
    struct __remove_unsigned<char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned char>
    { typedef signed char __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned short>
    { typedef short __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned int>
    { typedef int __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long>
    { typedef long __type; };
#pragma empty_line
  template<>
    struct __remove_unsigned<unsigned long long>
    { typedef long long __type; };
#pragma empty_line
  // Declare but don't define.
  template<>
    struct __remove_unsigned<bool>;
#pragma empty_line
  template<>
    struct __remove_unsigned<wchar_t>;
#pragma empty_line
#pragma empty_line
  // For use in string and vstring.
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type* __ptr)
    { return __ptr == 0; }
#pragma empty_line
  template<typename _Type>
    inline bool
    __is_null_pointer(_Type)
    { return false; }
#pragma empty_line
#pragma empty_line
  // For complex and cmath
  template<typename _Tp, bool = std::__is_integer<_Tp>::__value>
    struct __promote
    { typedef double __type; };
#pragma empty_line
  // No nested __type member for non-integer non-floating point types,
  // allows this type to be used for SFINAE to constrain overloads in
  // <cmath> and <complex> to only the intended types.
  template<typename _Tp>
    struct __promote<_Tp, false>
    { };
#pragma empty_line
  template<>
    struct __promote<long double>
    { typedef long double __type; };
#pragma empty_line
  template<>
    struct __promote<double>
    { typedef double __type; };
#pragma empty_line
  template<>
    struct __promote<float>
    { typedef float __type; };
#pragma empty_line
  template<typename _Tp, typename _Up,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type>
    struct __promote_2
    {
      typedef __typeof__(_Tp2() + _Up2()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type>
    struct __promote_3
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2()) __type;
    };
#pragma empty_line
  template<typename _Tp, typename _Up, typename _Vp, typename _Wp,
           typename _Tp2 = typename __promote<_Tp>::__type,
           typename _Up2 = typename __promote<_Up>::__type,
           typename _Vp2 = typename __promote<_Vp>::__type,
           typename _Wp2 = typename __promote<_Wp>::__type>
    struct __promote_4
    {
      typedef __typeof__(_Tp2() + _Up2() + _Vp2() + _Wp2()) __type;
    };
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 64 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 1 3
// -*- C++ -*-
#pragma empty_line
// Copyright (C) 2007, 2008, 2009, 2010 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the terms
// of the GNU General Public License as published by the Free Software
// Foundation; either version 3, or (at your option) any later
// version.
#pragma empty_line
// This library is distributed in the hope that it will be useful, but
// WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
// General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file ext/numeric_traits.h
 *  This file is a GNU extension to the Standard C++ Library.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 32 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // Compile time constants for builtin types.
  // Sadly std::numeric_limits member functions cannot be used for this.
#pragma line 53 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 3
  template<typename _Value>
    struct __numeric_traits_integer
    {
      // Only integers for initialization of member constant.
      static const _Value __min = (((_Value)(-1) < 0) ? (_Value)1 << (sizeof(_Value) * 8 - ((_Value)(-1) < 0)) : (_Value)0);
      static const _Value __max = (((_Value)(-1) < 0) ? (((((_Value)1 << ((sizeof(_Value) * 8 - ((_Value)(-1) < 0)) - 1)) - 1) << 1) + 1) : ~(_Value)0);
#pragma empty_line
      // NB: these two also available in std::numeric_limits as compile
      // time constants, but <limits> is big and we avoid including it.
      static const bool __is_signed = ((_Value)(-1) < 0);
      static const int __digits = (sizeof(_Value) * 8 - ((_Value)(-1) < 0));
    };
#pragma empty_line
  template<typename _Value>
    const _Value __numeric_traits_integer<_Value>::__min;
#pragma empty_line
  template<typename _Value>
    const _Value __numeric_traits_integer<_Value>::__max;
#pragma empty_line
  template<typename _Value>
    const bool __numeric_traits_integer<_Value>::__is_signed;
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_integer<_Value>::__digits;
#pragma line 98 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h" 3
  template<typename _Value>
    struct __numeric_traits_floating
    {
      // Only floating point types. See N1822. 
      static const int __max_digits10 = (2 + (std::__are_same<_Value, float>::__value ? 24 : std::__are_same<_Value, double>::__value ? 53 : 64) * 643L / 2136);
#pragma empty_line
      // See above comment...
      static const bool __is_signed = true;
      static const int __digits10 = (std::__are_same<_Value, float>::__value ? 6 : std::__are_same<_Value, double>::__value ? 15 : 18);
      static const int __max_exponent10 = (std::__are_same<_Value, float>::__value ? 38 : std::__are_same<_Value, double>::__value ? 308 : 4932);
    };
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_floating<_Value>::__max_digits10;
#pragma empty_line
  template<typename _Value>
    const bool __numeric_traits_floating<_Value>::__is_signed;
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_floating<_Value>::__digits10;
#pragma empty_line
  template<typename _Value>
    const int __numeric_traits_floating<_Value>::__max_exponent10;
#pragma empty_line
  template<typename _Value>
    struct __numeric_traits
    : public __conditional_type<std::__is_integer<_Value>::__value,
    __numeric_traits_integer<_Value>,
    __numeric_traits_floating<_Value> >::__type
    { };
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 65 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 1 3
// Pair implementation -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996,1997
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file bits/stl_pair.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{utility}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 1 3
// Move, forward and identity for C++0x + swap -*- C++ -*-
#pragma empty_line
// Copyright (C) 2007, 2008, 2009, 2010 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/move.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{utility}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/concept_check.h" 1 3
// Concept-checking control -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2009, 2010 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/concept_check.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iterator}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 33 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/concept_check.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
// All places in libstdc++-v3 where these are used, or /might/ be used, or
// don't need to be used, or perhaps /should/ be used, are commented with
// "concept requirements" (and maybe some more text).  So grep like crazy
// if you're looking for additional places to use these.
#pragma empty_line
// Concept-checking code is off by default unless users turn it on via
// configure options or editing c++config.h.
#pragma line 35 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // Used, in C++03 mode too, by allocators, etc.
  template<typename _Tp>
    inline _Tp*
    __addressof(_Tp& __r)
    {
      return reinterpret_cast<_Tp*>
 (&const_cast<char&>(reinterpret_cast<const volatile char&>(__r)));
    }
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 109 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/move.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /**
   *  @brief Swaps two values.
   *  @ingroup mutating_algorithms
   *  @param  __a  A thing of arbitrary type.
   *  @param  __b  Another thing of arbitrary type.
   *  @return   Nothing.
  */
  template<typename _Tp>
    inline void
    swap(_Tp& __a, _Tp& __b)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
      _Tp __tmp = (__a);
      __a = (__b);
      __b = (__tmp);
    }
#pragma empty_line
  // _GLIBCXX_RESOLVE_LIB_DEFECTS
  // DR 809. std::swap should be overloaded for array types.
  template<typename _Tp, size_t _Nm>
    inline void
    swap(_Tp (&__a)[_Nm], _Tp (&__b)[_Nm])
    {
      for (size_t __n = 0; __n < _Nm; ++__n)
 swap(__a[__n], __b[__n]);
    }
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 61 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma line 85 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
  /// Struct holding two objects of arbitrary type.
  template<class _T1, class _T2>
    struct pair
    {
      typedef _T1 first_type; /// @c first_type is the first bound type
      typedef _T2 second_type; /// @c second_type is the second bound type
#pragma empty_line
      _T1 first; /// @c first is a copy of the first object
      _T2 second; /// @c second is a copy of the second object
#pragma empty_line
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 265.  std::pair::pair() effects overly restrictive
      /** The default constructor creates @c first and @c second using their
       *  respective default constructors.  */
                         pair()
      : first(), second() { }
#pragma empty_line
      /** Two objects may be passed to a @c pair constructor to be copied.  */
                         pair(const _T1& __a, const _T2& __b)
      : first(__a), second(__b) { }
#pragma empty_line
      /** There is also a templated copy ctor for the @c pair class itself.  */
      template<class _U1, class _U2>
                    pair(const pair<_U1, _U2>& __p)
 : first(__p.first), second(__p.second) { }
#pragma line 196 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
    };
#pragma empty_line
  /// Two pairs of the same type are equal iff their members are equal.
  template<class _T1, class _T2>
    inline bool
    operator==(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return __x.first == __y.first && __x.second == __y.second; }
#pragma empty_line
  /// <http://gcc.gnu.org/onlinedocs/libstdc++/manual/utilities.html>
  template<class _T1, class _T2>
    inline bool
    operator<(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return __x.first < __y.first
      || (!(__y.first < __x.first) && __x.second < __y.second); }
#pragma empty_line
  /// Uses @c operator== to find the result.
  template<class _T1, class _T2>
    inline bool
    operator!=(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return !(__x == __y); }
#pragma empty_line
  /// Uses @c operator< to find the result.
  template<class _T1, class _T2>
    inline bool
    operator>(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return __y < __x; }
#pragma empty_line
  /// Uses @c operator< to find the result.
  template<class _T1, class _T2>
    inline bool
    operator<=(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return !(__y < __x); }
#pragma empty_line
  /// Uses @c operator< to find the result.
  template<class _T1, class _T2>
    inline bool
    operator>=(const pair<_T1, _T2>& __x, const pair<_T1, _T2>& __y)
    { return !(__x < __y); }
#pragma line 245 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
  /**
   *  @brief A convenience wrapper for creating a pair from two objects.
   *  @param  x  The first object.
   *  @param  y  The second object.
   *  @return   A newly-constructed pair<> object of the appropriate type.
   *
   *  The standard requires that the objects be passed by reference-to-const,
   *  but LWG issue #181 says they should be passed by const value.  We follow
   *  the LWG by default.
   */
  // _GLIBCXX_RESOLVE_LIB_DEFECTS
  // 181.  make_pair() unintended behavior
#pragma line 270 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_pair.h" 3
  template<class _T1, class _T2>
    inline pair<_T1, _T2>
    make_pair(_T1 __x, _T2 __y)
    { return pair<_T1, _T2>(__x, __y); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 66 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 1 3
// Types used in iterator implementation -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996-1998
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file bits/stl_iterator_base_types.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iterator}
 *
 *  This file contains all of the general iterator-related utility types,
 *  such as iterator_traits and struct iterator.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 63 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /**
   *  @defgroup iterators Iterators
   *  Abstractions for uniform iterating through various underlying types.
  */
  //@{ 
#pragma empty_line
  /**
   *  @defgroup iterator_tags Iterator Tags
   *  These are empty types, used to distinguish different iterators.  The
   *  distinction is not made by what they contain, but simply by what they
   *  are.  Different underlying algorithms can then be used based on the
   *  different operations supported by different iterator types.
  */
  //@{ 
  ///  Marking input iterators.
  struct input_iterator_tag { };
#pragma empty_line
  ///  Marking output iterators.
  struct output_iterator_tag { };
#pragma empty_line
  /// Forward iterators support a superset of input iterator operations.
  struct forward_iterator_tag : public input_iterator_tag { };
#pragma empty_line
  /// Bidirectional iterators support a superset of forward iterator
  /// operations.
  struct bidirectional_iterator_tag : public forward_iterator_tag { };
#pragma empty_line
  /// Random-access iterators support a superset of bidirectional
  /// iterator operations.
  struct random_access_iterator_tag : public bidirectional_iterator_tag { };
  //@}
#pragma empty_line
  /**
   *  @brief  Common %iterator class.
   *
   *  This class does nothing but define nested typedefs.  %Iterator classes
   *  can inherit from this class to save some work.  The typedefs are then
   *  used in specializations and overloading.
   *
   *  In particular, there are no default implementations of requirements
   *  such as @c operator++ and the like.  (How could there be?)
  */
  template<typename _Category, typename _Tp, typename _Distance = ptrdiff_t,
           typename _Pointer = _Tp*, typename _Reference = _Tp&>
    struct iterator
    {
      /// One of the @link iterator_tags tag types@endlink.
      typedef _Category iterator_category;
      /// The type "pointed to" by the iterator.
      typedef _Tp value_type;
      /// Distance between iterators is represented as this type.
      typedef _Distance difference_type;
      /// This type represents a pointer-to-value_type.
      typedef _Pointer pointer;
      /// This type represents a reference-to-value_type.
      typedef _Reference reference;
    };
#pragma empty_line
  /**
   *  @brief  Traits class for iterators.
   *
   *  This class does nothing but define nested typedefs.  The general
   *  version simply @a forwards the nested typedefs from the Iterator
   *  argument.  Specialized versions for pointers and pointers-to-const
   *  provide tighter, more correct semantics.
  */
#pragma line 162 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_types.h" 3
  template<typename _Iterator>
    struct iterator_traits
    {
      typedef typename _Iterator::iterator_category iterator_category;
      typedef typename _Iterator::value_type value_type;
      typedef typename _Iterator::difference_type difference_type;
      typedef typename _Iterator::pointer pointer;
      typedef typename _Iterator::reference reference;
    };
#pragma empty_line
#pragma empty_line
  /// Partial specialization for pointer types.
  template<typename _Tp>
    struct iterator_traits<_Tp*>
    {
      typedef random_access_iterator_tag iterator_category;
      typedef _Tp value_type;
      typedef ptrdiff_t difference_type;
      typedef _Tp* pointer;
      typedef _Tp& reference;
    };
#pragma empty_line
  /// Partial specialization for const pointer types.
  template<typename _Tp>
    struct iterator_traits<const _Tp*>
    {
      typedef random_access_iterator_tag iterator_category;
      typedef _Tp value_type;
      typedef ptrdiff_t difference_type;
      typedef const _Tp* pointer;
      typedef const _Tp& reference;
    };
#pragma empty_line
  /**
   *  This function is not a part of the C++ standard but is syntactic
   *  sugar for internal library use only.
  */
  template<typename _Iter>
    inline typename iterator_traits<_Iter>::iterator_category
    __iterator_category(const _Iter&)
    { return typename iterator_traits<_Iter>::iterator_category(); }
#pragma empty_line
  //@}
#pragma empty_line
  // If _Iterator has a base returns it otherwise _Iterator is returned
  // untouched
  template<typename _Iterator, bool _HasBase>
    struct _Iter_base
    {
      typedef _Iterator iterator_type;
      static iterator_type _S_base(_Iterator __it)
      { return __it; }
    };
#pragma empty_line
  template<typename _Iterator>
    struct _Iter_base<_Iterator, true>
    {
      typedef typename _Iterator::iterator_type iterator_type;
      static iterator_type _S_base(_Iterator __it)
      { return __it.base(); }
    };
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 67 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 1 3
// Functions used by iterators -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996-1998
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file bits/stl_iterator_base_funcs.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iterator}
 *
 *  This file contains all of the general iterator-related utility
 *  functions, such as distance() and advance().
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 63 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _InputIterator>
    inline typename iterator_traits<_InputIterator>::difference_type
    __distance(_InputIterator __first, _InputIterator __last,
               input_iterator_tag)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
      typename iterator_traits<_InputIterator>::difference_type __n = 0;
      while (__first != __last)
 {
   ++__first;
   ++__n;
 }
      return __n;
    }
#pragma empty_line
  template<typename _RandomAccessIterator>
    inline typename iterator_traits<_RandomAccessIterator>::difference_type
    __distance(_RandomAccessIterator __first, _RandomAccessIterator __last,
               random_access_iterator_tag)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
      return __last - __first;
    }
#pragma empty_line
  /**
   *  @brief A generalization of pointer arithmetic.
   *  @param  first  An input iterator.
   *  @param  last  An input iterator.
   *  @return  The distance between them.
   *
   *  Returns @c n such that first + n == last.  This requires that @p last
   *  must be reachable from @p first.  Note that @c n may be negative.
   *
   *  For random access iterators, this uses their @c + and @c - operations
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator>
    inline typename iterator_traits<_InputIterator>::difference_type
    distance(_InputIterator __first, _InputIterator __last)
    {
      // concept requirements -- taken care of in __distance
      return std::__distance(__first, __last,
        std::__iterator_category(__first));
    }
#pragma empty_line
  template<typename _InputIterator, typename _Distance>
    inline void
    __advance(_InputIterator& __i, _Distance __n, input_iterator_tag)
    {
      // concept requirements
#pragma empty_line
      while (__n--)
 ++__i;
    }
#pragma empty_line
  template<typename _BidirectionalIterator, typename _Distance>
    inline void
    __advance(_BidirectionalIterator& __i, _Distance __n,
       bidirectional_iterator_tag)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
      if (__n > 0)
        while (__n--)
   ++__i;
      else
        while (__n++)
   --__i;
    }
#pragma empty_line
  template<typename _RandomAccessIterator, typename _Distance>
    inline void
    __advance(_RandomAccessIterator& __i, _Distance __n,
              random_access_iterator_tag)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
      __i += __n;
    }
#pragma empty_line
  /**
   *  @brief A generalization of pointer arithmetic.
   *  @param  i  An input iterator.
   *  @param  n  The @a delta by which to change @p i.
   *  @return  Nothing.
   *
   *  This increments @p i by @p n.  For bidirectional and random access
   *  iterators, @p n may be negative, in which case @p i is decremented.
   *
   *  For random access iterators, this uses their @c + and @c - operations
   *  and are constant time.  For other %iterator classes they are linear time.
  */
  template<typename _InputIterator, typename _Distance>
    inline void
    advance(_InputIterator& __i, _Distance __n)
    {
      // concept requirements -- taken care of in __advance
      typename iterator_traits<_InputIterator>::difference_type __d = __n;
      std::__advance(__i, __d, std::__iterator_category(__i));
    }
#pragma line 200 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator_base_funcs.h" 3
} // namespace
#pragma line 68 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 1 3
// Iterators -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996-1998
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file bits/stl_iterator.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iterator}
 *
 *  This file implements reverse_iterator, back_insert_iterator,
 *  front_insert_iterator, insert_iterator, __normal_iterator, and their
 *  supporting functions and overloaded operators.
 */
#pragma line 68 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /**
   * @addtogroup iterators
   * @{
   */
#pragma empty_line
  // 24.4.1 Reverse iterators
  /**
   *  Bidirectional and random access iterators have corresponding reverse
   *  %iterator adaptors that iterate through the data structure in the
   *  opposite direction.  They have the same signatures as the corresponding
   *  iterators.  The fundamental relation between a reverse %iterator and its
   *  corresponding %iterator @c i is established by the identity:
   *  @code
   *      &*(reverse_iterator(i)) == &*(i - 1)
   *  @endcode
   *
   *  <em>This mapping is dictated by the fact that while there is always a
   *  pointer past the end of an array, there might not be a valid pointer
   *  before the beginning of an array.</em> [24.4.1]/1,2
   *
   *  Reverse iterators can be tricky and surprising at first.  Their
   *  semantics make sense, however, and the trickiness is a side effect of
   *  the requirement that the iterators must be safe.
  */
  template<typename _Iterator>
    class reverse_iterator
    : public iterator<typename iterator_traits<_Iterator>::iterator_category,
        typename iterator_traits<_Iterator>::value_type,
        typename iterator_traits<_Iterator>::difference_type,
        typename iterator_traits<_Iterator>::pointer,
                      typename iterator_traits<_Iterator>::reference>
    {
    protected:
      _Iterator current;
#pragma empty_line
      typedef iterator_traits<_Iterator> __traits_type;
#pragma empty_line
    public:
      typedef _Iterator iterator_type;
      typedef typename __traits_type::difference_type difference_type;
      typedef typename __traits_type::pointer pointer;
      typedef typename __traits_type::reference reference;
#pragma empty_line
      /**
       *  The default constructor default-initializes member @p current.
       *  If it is a pointer, that means it is zero-initialized.
      */
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 235 No specification of default ctor for reverse_iterator
      reverse_iterator() : current() { }
#pragma empty_line
      /**
       *  This %iterator will move in the opposite direction that @p x does.
      */
      explicit
      reverse_iterator(iterator_type __x) : current(__x) { }
#pragma empty_line
      /**
       *  The copy constructor is normal.
      */
      reverse_iterator(const reverse_iterator& __x)
      : current(__x.current) { }
#pragma empty_line
      /**
       *  A reverse_iterator across other types can be copied in the normal
       *  fashion.
      */
      template<typename _Iter>
        reverse_iterator(const reverse_iterator<_Iter>& __x)
 : current(__x.base()) { }
#pragma empty_line
      /**
       *  @return  @c current, the %iterator used for underlying work.
      */
      iterator_type
      base() const
      { return current; }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reference
      operator*() const
      {
 _Iterator __tmp = current;
 return *--__tmp;
      }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      pointer
      operator->() const
      { return &(operator*()); }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator&
      operator++()
      {
 --current;
 return *this;
      }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator
      operator++(int)
      {
 reverse_iterator __tmp = *this;
 --current;
 return __tmp;
      }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator&
      operator--()
      {
 ++current;
 return *this;
      }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator
      operator--(int)
      {
 reverse_iterator __tmp = *this;
 ++current;
 return __tmp;
      }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator
      operator+(difference_type __n) const
      { return reverse_iterator(current - __n); }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator&
      operator+=(difference_type __n)
      {
 current -= __n;
 return *this;
      }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator
      operator-(difference_type __n) const
      { return reverse_iterator(current + __n); }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reverse_iterator&
      operator-=(difference_type __n)
      {
 current += __n;
 return *this;
      }
#pragma empty_line
      /**
       *  @return  TODO
       *
       *  @doctodo
      */
      reference
      operator[](difference_type __n) const
      { return *(*this + __n); }
    };
#pragma empty_line
  //@{
  /**
   *  @param  x  A %reverse_iterator.
   *  @param  y  A %reverse_iterator.
   *  @return  A simple bool.
   *
   *  Reverse iterators forward many operations to their underlying base()
   *  iterators.  Others are implemented in terms of one another.
   *
  */
  template<typename _Iterator>
    inline bool
    operator==(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return __x.base() == __y.base(); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator<(const reverse_iterator<_Iterator>& __x,
       const reverse_iterator<_Iterator>& __y)
    { return __y.base() < __x.base(); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator!=(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return !(__x == __y); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator>(const reverse_iterator<_Iterator>& __x,
       const reverse_iterator<_Iterator>& __y)
    { return __y < __x; }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator<=(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return !(__y < __x); }
#pragma empty_line
  template<typename _Iterator>
    inline bool
    operator>=(const reverse_iterator<_Iterator>& __x,
        const reverse_iterator<_Iterator>& __y)
    { return !(__x < __y); }
#pragma empty_line
  template<typename _Iterator>
    inline typename reverse_iterator<_Iterator>::difference_type
    operator-(const reverse_iterator<_Iterator>& __x,
       const reverse_iterator<_Iterator>& __y)
    { return __y.base() - __x.base(); }
#pragma empty_line
  template<typename _Iterator>
    inline reverse_iterator<_Iterator>
    operator+(typename reverse_iterator<_Iterator>::difference_type __n,
       const reverse_iterator<_Iterator>& __x)
    { return reverse_iterator<_Iterator>(__x.base() - __n); }
#pragma empty_line
  // _GLIBCXX_RESOLVE_LIB_DEFECTS
  // DR 280. Comparison of reverse_iterator to const reverse_iterator.
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator==(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return __x.base() == __y.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator<(const reverse_iterator<_IteratorL>& __x,
       const reverse_iterator<_IteratorR>& __y)
    { return __y.base() < __x.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator!=(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return !(__x == __y); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator>(const reverse_iterator<_IteratorL>& __x,
       const reverse_iterator<_IteratorR>& __y)
    { return __y < __x; }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator<=(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return !(__y < __x); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
    inline bool
    operator>=(const reverse_iterator<_IteratorL>& __x,
        const reverse_iterator<_IteratorR>& __y)
    { return !(__x < __y); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR>
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    inline typename reverse_iterator<_IteratorL>::difference_type
    operator-(const reverse_iterator<_IteratorL>& __x,
       const reverse_iterator<_IteratorR>& __y)
#pragma empty_line
    { return __y.base() - __x.base(); }
  //@}
#pragma empty_line
  // 24.4.2.2.1 back_insert_iterator
  /**
   *  @brief  Turns assignment into insertion.
   *
   *  These are output iterators, constructed from a container-of-T.
   *  Assigning a T to the iterator appends it to the container using
   *  push_back.
   *
   *  Tip:  Using the back_inserter function to create these iterators can
   *  save typing.
  */
  template<typename _Container>
    class back_insert_iterator
    : public iterator<output_iterator_tag, void, void, void, void>
    {
    protected:
      _Container* container;
#pragma empty_line
    public:
      /// A nested typedef for the type of whatever container you used.
      typedef _Container container_type;
#pragma empty_line
      /// The only way to create this %iterator is with a container.
      explicit
      back_insert_iterator(_Container& __x) : container(&__x) { }
#pragma empty_line
      /**
       *  @param  value  An instance of whatever type
       *                 container_type::const_reference is; presumably a
       *                 reference-to-const T for container<T>.
       *  @return  This %iterator, for chained operations.
       *
       *  This kind of %iterator doesn't really have a @a position in the
       *  container (you can think of the position as being permanently at
       *  the end, if you like).  Assigning a value to the %iterator will
       *  always append the value to the end of the container.
      */
#pragma empty_line
      back_insert_iterator&
      operator=(typename _Container::const_reference __value)
      {
 container->push_back(__value);
 return *this;
      }
#pragma line 444 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      /// Simply returns *this.
      back_insert_iterator&
      operator*()
      { return *this; }
#pragma empty_line
      /// Simply returns *this.  (This %iterator does not @a move.)
      back_insert_iterator&
      operator++()
      { return *this; }
#pragma empty_line
      /// Simply returns *this.  (This %iterator does not @a move.)
      back_insert_iterator
      operator++(int)
      { return *this; }
    };
#pragma empty_line
  /**
   *  @param  x  A container of arbitrary type.
   *  @return  An instance of back_insert_iterator working on @p x.
   *
   *  This wrapper function helps in creating back_insert_iterator instances.
   *  Typing the name of the %iterator requires knowing the precise full
   *  type of the container, which can be tedious and impedes generic
   *  programming.  Using this function lets you take advantage of automatic
   *  template parameter deduction, making the compiler match the correct
   *  types for you.
  */
  template<typename _Container>
    inline back_insert_iterator<_Container>
    back_inserter(_Container& __x)
    { return back_insert_iterator<_Container>(__x); }
#pragma empty_line
  /**
   *  @brief  Turns assignment into insertion.
   *
   *  These are output iterators, constructed from a container-of-T.
   *  Assigning a T to the iterator prepends it to the container using
   *  push_front.
   *
   *  Tip:  Using the front_inserter function to create these iterators can
   *  save typing.
  */
  template<typename _Container>
    class front_insert_iterator
    : public iterator<output_iterator_tag, void, void, void, void>
    {
    protected:
      _Container* container;
#pragma empty_line
    public:
      /// A nested typedef for the type of whatever container you used.
      typedef _Container container_type;
#pragma empty_line
      /// The only way to create this %iterator is with a container.
      explicit front_insert_iterator(_Container& __x) : container(&__x) { }
#pragma empty_line
      /**
       *  @param  value  An instance of whatever type
       *                 container_type::const_reference is; presumably a
       *                 reference-to-const T for container<T>.
       *  @return  This %iterator, for chained operations.
       *
       *  This kind of %iterator doesn't really have a @a position in the
       *  container (you can think of the position as being permanently at
       *  the front, if you like).  Assigning a value to the %iterator will
       *  always prepend the value to the front of the container.
      */
#pragma empty_line
      front_insert_iterator&
      operator=(typename _Container::const_reference __value)
      {
 container->push_front(__value);
 return *this;
      }
#pragma line 534 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      /// Simply returns *this.
      front_insert_iterator&
      operator*()
      { return *this; }
#pragma empty_line
      /// Simply returns *this.  (This %iterator does not @a move.)
      front_insert_iterator&
      operator++()
      { return *this; }
#pragma empty_line
      /// Simply returns *this.  (This %iterator does not @a move.)
      front_insert_iterator
      operator++(int)
      { return *this; }
    };
#pragma empty_line
  /**
   *  @param  x  A container of arbitrary type.
   *  @return  An instance of front_insert_iterator working on @p x.
   *
   *  This wrapper function helps in creating front_insert_iterator instances.
   *  Typing the name of the %iterator requires knowing the precise full
   *  type of the container, which can be tedious and impedes generic
   *  programming.  Using this function lets you take advantage of automatic
   *  template parameter deduction, making the compiler match the correct
   *  types for you.
  */
  template<typename _Container>
    inline front_insert_iterator<_Container>
    front_inserter(_Container& __x)
    { return front_insert_iterator<_Container>(__x); }
#pragma empty_line
  /**
   *  @brief  Turns assignment into insertion.
   *
   *  These are output iterators, constructed from a container-of-T.
   *  Assigning a T to the iterator inserts it in the container at the
   *  %iterator's position, rather than overwriting the value at that
   *  position.
   *
   *  (Sequences will actually insert a @e copy of the value before the
   *  %iterator's position.)
   *
   *  Tip:  Using the inserter function to create these iterators can
   *  save typing.
  */
  template<typename _Container>
    class insert_iterator
    : public iterator<output_iterator_tag, void, void, void, void>
    {
    protected:
      _Container* container;
      typename _Container::iterator iter;
#pragma empty_line
    public:
      /// A nested typedef for the type of whatever container you used.
      typedef _Container container_type;
#pragma empty_line
      /**
       *  The only way to create this %iterator is with a container and an
       *  initial position (a normal %iterator into the container).
      */
      insert_iterator(_Container& __x, typename _Container::iterator __i)
      : container(&__x), iter(__i) {}
#pragma empty_line
      /**
       *  @param  value  An instance of whatever type
       *                 container_type::const_reference is; presumably a
       *                 reference-to-const T for container<T>.
       *  @return  This %iterator, for chained operations.
       *
       *  This kind of %iterator maintains its own position in the
       *  container.  Assigning a value to the %iterator will insert the
       *  value into the container at the place before the %iterator.
       *
       *  The position is maintained such that subsequent assignments will
       *  insert values immediately after one another.  For example,
       *  @code
       *     // vector v contains A and Z
       *
       *     insert_iterator i (v, ++v.begin());
       *     i = 1;
       *     i = 2;
       *     i = 3;
       *
       *     // vector v contains A, 1, 2, 3, and Z
       *  @endcode
      */
#pragma empty_line
      insert_iterator&
      operator=(typename _Container::const_reference __value)
      {
 iter = container->insert(iter, __value);
 ++iter;
 return *this;
      }
#pragma line 648 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_iterator.h" 3
      /// Simply returns *this.
      insert_iterator&
      operator*()
      { return *this; }
#pragma empty_line
      /// Simply returns *this.  (This %iterator does not @a move.)
      insert_iterator&
      operator++()
      { return *this; }
#pragma empty_line
      /// Simply returns *this.  (This %iterator does not @a move.)
      insert_iterator&
      operator++(int)
      { return *this; }
    };
#pragma empty_line
  /**
   *  @param  x  A container of arbitrary type.
   *  @return  An instance of insert_iterator working on @p x.
   *
   *  This wrapper function helps in creating insert_iterator instances.
   *  Typing the name of the %iterator requires knowing the precise full
   *  type of the container, which can be tedious and impedes generic
   *  programming.  Using this function lets you take advantage of automatic
   *  template parameter deduction, making the compiler match the correct
   *  types for you.
  */
  template<typename _Container, typename _Iterator>
    inline insert_iterator<_Container>
    inserter(_Container& __x, _Iterator __i)
    {
      return insert_iterator<_Container>(__x,
      typename _Container::iterator(__i));
    }
#pragma empty_line
  // @} group iterators
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // This iterator adapter is @a normal in the sense that it does not
  // change the semantics of any of the operators of its iterator
  // parameter.  Its primary purpose is to convert an iterator that is
  // not a class, e.g. a pointer, into an iterator that is a class.
  // The _Container parameter exists solely so that different containers
  // using this template can instantiate different types, even if the
  // _Iterator parameter is the same.
  using std::iterator_traits;
  using std::iterator;
  template<typename _Iterator, typename _Container>
    class __normal_iterator
    {
    protected:
      _Iterator _M_current;
#pragma empty_line
      typedef iterator_traits<_Iterator> __traits_type;
#pragma empty_line
    public:
      typedef _Iterator iterator_type;
      typedef typename __traits_type::iterator_category iterator_category;
      typedef typename __traits_type::value_type value_type;
      typedef typename __traits_type::difference_type difference_type;
      typedef typename __traits_type::reference reference;
      typedef typename __traits_type::pointer pointer;
#pragma empty_line
                         __normal_iterator() : _M_current(_Iterator()) { }
#pragma empty_line
      explicit
      __normal_iterator(const _Iterator& __i) : _M_current(__i) { }
#pragma empty_line
      // Allow iterator to const_iterator conversion
      template<typename _Iter>
        __normal_iterator(const __normal_iterator<_Iter,
     typename __enable_if<
              (std::__are_same<_Iter, typename _Container::pointer>::__value),
        _Container>::__type>& __i)
        : _M_current(__i.base()) { }
#pragma empty_line
      // Forward iterator requirements
      reference
      operator*() const
      { return *_M_current; }
#pragma empty_line
      pointer
      operator->() const
      { return _M_current; }
#pragma empty_line
      __normal_iterator&
      operator++()
      {
 ++_M_current;
 return *this;
      }
#pragma empty_line
      __normal_iterator
      operator++(int)
      { return __normal_iterator(_M_current++); }
#pragma empty_line
      // Bidirectional iterator requirements
      __normal_iterator&
      operator--()
      {
 --_M_current;
 return *this;
      }
#pragma empty_line
      __normal_iterator
      operator--(int)
      { return __normal_iterator(_M_current--); }
#pragma empty_line
      // Random access iterator requirements
      reference
      operator[](const difference_type& __n) const
      { return _M_current[__n]; }
#pragma empty_line
      __normal_iterator&
      operator+=(const difference_type& __n)
      { _M_current += __n; return *this; }
#pragma empty_line
      __normal_iterator
      operator+(const difference_type& __n) const
      { return __normal_iterator(_M_current + __n); }
#pragma empty_line
      __normal_iterator&
      operator-=(const difference_type& __n)
      { _M_current -= __n; return *this; }
#pragma empty_line
      __normal_iterator
      operator-(const difference_type& __n) const
      { return __normal_iterator(_M_current - __n); }
#pragma empty_line
      const _Iterator&
      base() const
      { return _M_current; }
    };
#pragma empty_line
  // Note: In what follows, the left- and right-hand-side iterators are
  // allowed to vary in types (conceptually in cv-qualification) so that
  // comparison between cv-qualified and non-cv-qualified iterators be
  // valid.  However, the greedy and unfriendly operators in std::rel_ops
  // will make overload resolution ambiguous (when in scope) if we don't
  // provide overloads whose operands are of the same type.  Can someone
  // remind me what generic programming is about? -- Gaby
#pragma empty_line
  // Forward iterator requirements
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator==(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() == __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator==(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() == __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator!=(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() != __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator!=(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() != __rhs.base(); }
#pragma empty_line
  // Random access iterator requirements
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator<(const __normal_iterator<_IteratorL, _Container>& __lhs,
       const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() < __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator<(const __normal_iterator<_Iterator, _Container>& __lhs,
       const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() < __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator>(const __normal_iterator<_IteratorL, _Container>& __lhs,
       const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() > __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator>(const __normal_iterator<_Iterator, _Container>& __lhs,
       const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() > __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator<=(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() <= __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator<=(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() <= __rhs.base(); }
#pragma empty_line
  template<typename _IteratorL, typename _IteratorR, typename _Container>
    inline bool
    operator>=(const __normal_iterator<_IteratorL, _Container>& __lhs,
        const __normal_iterator<_IteratorR, _Container>& __rhs)
    { return __lhs.base() >= __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline bool
    operator>=(const __normal_iterator<_Iterator, _Container>& __lhs,
        const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() >= __rhs.base(); }
#pragma empty_line
  // _GLIBCXX_RESOLVE_LIB_DEFECTS
  // According to the resolution of DR179 not only the various comparison
  // operators but also operator- must accept mixed iterator/const_iterator
  // parameters.
  template<typename _IteratorL, typename _IteratorR, typename _Container>
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    inline typename __normal_iterator<_IteratorL, _Container>::difference_type
    operator-(const __normal_iterator<_IteratorL, _Container>& __lhs,
       const __normal_iterator<_IteratorR, _Container>& __rhs)
#pragma empty_line
    { return __lhs.base() - __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline typename __normal_iterator<_Iterator, _Container>::difference_type
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
       const __normal_iterator<_Iterator, _Container>& __rhs)
    { return __lhs.base() - __rhs.base(); }
#pragma empty_line
  template<typename _Iterator, typename _Container>
    inline __normal_iterator<_Iterator, _Container>
    operator+(typename __normal_iterator<_Iterator, _Container>::difference_type
       __n, const __normal_iterator<_Iterator, _Container>& __i)
    { return __normal_iterator<_Iterator, _Container>(__i.base() + __n); }
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 69 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/debug/debug.h" 1 3
// Debugging support implementation -*- C++ -*-
#pragma empty_line
// Copyright (C) 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file debug/debug.h
 *  This file is a GNU debug extension to the Standard C++ Library.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/** Macros and namespaces used by the implementation outside of debug
 *  wrappers to verify certain properties. The __glibcxx_requires_xxx
 *  macros are merely wrappers around the __glibcxx_check_xxx wrappers
 *  when we are compiling with debug mode, but disappear when we are
 *  in release mode so that there is no checking performed in, e.g.,
 *  the standard library algorithms.
*/
#pragma empty_line
// Debug mode namespaces.
#pragma empty_line
/**
 * @namespace std::__debug
 * @brief GNU debug code, replaces standard behavior with debug behavior.
 */
namespace std
{
  namespace __debug { }
}
#pragma empty_line
/** @namespace __gnu_debug
 *  @brief GNU debug classes for public use.
*/
namespace __gnu_debug
{
  using namespace std::__debug;
}
#pragma line 71 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 2 3
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // See http://gcc.gnu.org/ml/libstdc++/2004-08/msg00167.html: in a
  // nutshell, we are partially implementing the resolution of DR 187,
  // when it's safe, i.e., the value_types are equal.
  template<bool _BoolType>
    struct __iter_swap
    {
      template<typename _ForwardIterator1, typename _ForwardIterator2>
        static void
        iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
        {
          typedef typename iterator_traits<_ForwardIterator1>::value_type
            _ValueType1;
          _ValueType1 __tmp = (*__a);
          *__a = (*__b);
          *__b = (__tmp);
 }
    };
#pragma empty_line
  template<>
    struct __iter_swap<true>
    {
      template<typename _ForwardIterator1, typename _ForwardIterator2>
        static void
        iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
        {
          swap(*__a, *__b);
        }
    };
#pragma empty_line
  /**
   *  @brief Swaps the contents of two iterators.
   *  @ingroup mutating_algorithms
   *  @param  a  An iterator.
   *  @param  b  Another iterator.
   *  @return   Nothing.
   *
   *  This function swaps the values pointed to by two iterators, not the
   *  iterators themselves.
  */
  template<typename _ForwardIterator1, typename _ForwardIterator2>
    inline void
    iter_swap(_ForwardIterator1 __a, _ForwardIterator2 __b)
    {
      typedef typename iterator_traits<_ForwardIterator1>::value_type
 _ValueType1;
      typedef typename iterator_traits<_ForwardIterator2>::value_type
 _ValueType2;
#pragma empty_line
      // concept requirements
#pragma line 135 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
      typedef typename iterator_traits<_ForwardIterator1>::reference
 _ReferenceType1;
      typedef typename iterator_traits<_ForwardIterator2>::reference
 _ReferenceType2;
      std::__iter_swap<__are_same<_ValueType1, _ValueType2>::__value
 && __are_same<_ValueType1&, _ReferenceType1>::__value
 && __are_same<_ValueType2&, _ReferenceType2>::__value>::
 iter_swap(__a, __b);
    }
#pragma empty_line
  /**
   *  @brief Swap the elements of two sequences.
   *  @ingroup mutating_algorithms
   *  @param  first1  A forward iterator.
   *  @param  last1   A forward iterator.
   *  @param  first2  A forward iterator.
   *  @return   An iterator equal to @p first2+(last1-first1).
   *
   *  Swaps each element in the range @p [first1,last1) with the
   *  corresponding element in the range @p [first2,(last1-first1)).
   *  The ranges must not overlap.
  */
  template<typename _ForwardIterator1, typename _ForwardIterator2>
    _ForwardIterator2
    swap_ranges(_ForwardIterator1 __first1, _ForwardIterator1 __last1,
  _ForwardIterator2 __first2)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
                                                       ;
#pragma empty_line
      for (; __first1 != __last1; ++__first1, ++__first2)
 std::iter_swap(__first1, __first2);
      return __first2;
    }
#pragma empty_line
  /**
   *  @brief This does what you think it does.
   *  @ingroup sorting_algorithms
   *  @param  a  A thing of arbitrary type.
   *  @param  b  Another thing of arbitrary type.
   *  @return   The lesser of the parameters.
   *
   *  This is the simple classic generic implementation.  It will work on
   *  temporary expressions, since they are only evaluated once, unlike a
   *  preprocessor macro.
  */
  template<typename _Tp>
    inline const _Tp&
    min(const _Tp& __a, const _Tp& __b)
    {
      // concept requirements
#pragma empty_line
      //return __b < __a ? __b : __a;
      if (__b < __a)
 return __b;
      return __a;
    }
#pragma empty_line
  /**
   *  @brief This does what you think it does.
   *  @ingroup sorting_algorithms
   *  @param  a  A thing of arbitrary type.
   *  @param  b  Another thing of arbitrary type.
   *  @return   The greater of the parameters.
   *
   *  This is the simple classic generic implementation.  It will work on
   *  temporary expressions, since they are only evaluated once, unlike a
   *  preprocessor macro.
  */
  template<typename _Tp>
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b)
    {
      // concept requirements
#pragma empty_line
      //return  __a < __b ? __b : __a;
      if (__a < __b)
 return __b;
      return __a;
    }
#pragma empty_line
  /**
   *  @brief This does what you think it does.
   *  @ingroup sorting_algorithms
   *  @param  a  A thing of arbitrary type.
   *  @param  b  Another thing of arbitrary type.
   *  @param  comp  A @link comparison_functors comparison functor@endlink.
   *  @return   The lesser of the parameters.
   *
   *  This will work on temporary expressions, since they are only evaluated
   *  once, unlike a preprocessor macro.
  */
  template<typename _Tp, typename _Compare>
    inline const _Tp&
    min(const _Tp& __a, const _Tp& __b, _Compare __comp)
    {
      //return __comp(__b, __a) ? __b : __a;
      if (__comp(__b, __a))
 return __b;
      return __a;
    }
#pragma empty_line
  /**
   *  @brief This does what you think it does.
   *  @ingroup sorting_algorithms
   *  @param  a  A thing of arbitrary type.
   *  @param  b  Another thing of arbitrary type.
   *  @param  comp  A @link comparison_functors comparison functor@endlink.
   *  @return   The greater of the parameters.
   *
   *  This will work on temporary expressions, since they are only evaluated
   *  once, unlike a preprocessor macro.
  */
  template<typename _Tp, typename _Compare>
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b, _Compare __comp)
    {
      //return __comp(__a, __b) ? __b : __a;
      if (__comp(__a, __b))
 return __b;
      return __a;
    }
#pragma empty_line
  // If _Iterator is a __normal_iterator return its base (a plain pointer,
  // normally) otherwise return it untouched.  See copy, fill, ... 
  template<typename _Iterator>
    struct _Niter_base
    : _Iter_base<_Iterator, __is_normal_iterator<_Iterator>::__value>
    { };
#pragma empty_line
  template<typename _Iterator>
    inline typename _Niter_base<_Iterator>::iterator_type
    __niter_base(_Iterator __it)
    { return std::_Niter_base<_Iterator>::_S_base(__it); }
#pragma empty_line
  // Likewise, for move_iterator.
  template<typename _Iterator>
    struct _Miter_base
    : _Iter_base<_Iterator, __is_move_iterator<_Iterator>::__value>
    { };
#pragma empty_line
  template<typename _Iterator>
    inline typename _Miter_base<_Iterator>::iterator_type
    __miter_base(_Iterator __it)
    { return std::_Miter_base<_Iterator>::_S_base(__it); }
#pragma empty_line
  // All of these auxiliary structs serve two purposes.  (1) Replace
  // calls to copy with memmove whenever possible.  (Memmove, not memcpy,
  // because the input and output ranges are permitted to overlap.)
  // (2) If we're using random access iterators, then write the loop as
  // a for loop with an explicit count.
#pragma empty_line
  template<bool, bool, typename>
    struct __copy_move
    {
      template<typename _II, typename _OI>
        static _OI
        __copy_m(_II __first, _II __last, _OI __result)
        {
   for (; __first != __last; ++__result, ++__first)
     *__result = *__first;
   return __result;
 }
    };
#pragma line 319 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<>
    struct __copy_move<false, false, random_access_iterator_tag>
    {
      template<typename _II, typename _OI>
        static _OI
        __copy_m(_II __first, _II __last, _OI __result)
        {
   typedef typename iterator_traits<_II>::difference_type _Distance;
   for(_Distance __n = __last - __first; __n > 0; --__n)
     {
       *__result = *__first;
       ++__first;
       ++__result;
     }
   return __result;
 }
    };
#pragma line 357 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<bool _IsMove>
    struct __copy_move<_IsMove, true, random_access_iterator_tag>
    {
      template<typename _Tp>
        static _Tp*
        __copy_m(const _Tp* __first, const _Tp* __last, _Tp* __result)
        {
   const ptrdiff_t _Num = __last - __first;
   if (_Num)
     __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
   return __result + _Num;
 }
    };
#pragma empty_line
  template<bool _IsMove, typename _II, typename _OI>
    inline _OI
    __copy_move_a(_II __first, _II __last, _OI __result)
    {
      typedef typename iterator_traits<_II>::value_type _ValueTypeI;
      typedef typename iterator_traits<_OI>::value_type _ValueTypeO;
      typedef typename iterator_traits<_II>::iterator_category _Category;
      const bool __simple = (__is_trivial(_ValueTypeI)
                      && __is_pointer<_II>::__value
                      && __is_pointer<_OI>::__value
        && __are_same<_ValueTypeI, _ValueTypeO>::__value);
#pragma empty_line
      return std::__copy_move<_IsMove, __simple,
                       _Category>::__copy_m(__first, __last, __result);
    }
#pragma empty_line
  // Helpers for streambuf iterators (either istream or ostream).
  // NB: avoid including <iosfwd>, relatively large.
  template<typename _CharT>
    struct char_traits;
#pragma empty_line
  template<typename _CharT, typename _Traits>
    class istreambuf_iterator;
#pragma empty_line
  template<typename _CharT, typename _Traits>
    class ostreambuf_iterator;
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
      ostreambuf_iterator<_CharT, char_traits<_CharT> > >::__type
    __copy_move_a2(_CharT*, _CharT*,
     ostreambuf_iterator<_CharT, char_traits<_CharT> >);
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
      ostreambuf_iterator<_CharT, char_traits<_CharT> > >::__type
    __copy_move_a2(const _CharT*, const _CharT*,
     ostreambuf_iterator<_CharT, char_traits<_CharT> >);
#pragma empty_line
  template<bool _IsMove, typename _CharT>
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value,
        _CharT*>::__type
    __copy_move_a2(istreambuf_iterator<_CharT, char_traits<_CharT> >,
     istreambuf_iterator<_CharT, char_traits<_CharT> >, _CharT*);
#pragma empty_line
  template<bool _IsMove, typename _II, typename _OI>
    inline _OI
    __copy_move_a2(_II __first, _II __last, _OI __result)
    {
      return _OI(std::__copy_move_a<_IsMove>(std::__niter_base(__first),
          std::__niter_base(__last),
          std::__niter_base(__result)));
    }
#pragma empty_line
  /**
   *  @brief Copies the range [first,last) into result.
   *  @ingroup mutating_algorithms
   *  @param  first  An input iterator.
   *  @param  last   An input iterator.
   *  @param  result An output iterator.
   *  @return   result + (first - last)
   *
   *  This inline function will boil down to a call to @c memmove whenever
   *  possible.  Failing that, if random access iterators are passed, then the
   *  loop count will be known (and therefore a candidate for compiler
   *  optimizations such as unrolling).  Result may not be contained within
   *  [first,last); the copy_backward function should be used instead.
   *
   *  Note that the end of the output range is permitted to be contained
   *  within [first,last).
  */
  template<typename _II, typename _OI>
    inline _OI
    copy(_II __first, _II __last, _OI __result)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
#pragma empty_line
                                                     ;
#pragma empty_line
      return (std::__copy_move_a2<__is_move_iterator<_II>::__value>
       (std::__miter_base(__first), std::__miter_base(__last),
        __result));
    }
#pragma line 494 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<bool, bool, typename>
    struct __copy_move_backward
    {
      template<typename _BI1, typename _BI2>
        static _BI2
        __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
        {
   while (__first != __last)
     *--__result = *--__last;
   return __result;
 }
    };
#pragma line 522 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<>
    struct __copy_move_backward<false, false, random_access_iterator_tag>
    {
      template<typename _BI1, typename _BI2>
        static _BI2
        __copy_move_b(_BI1 __first, _BI1 __last, _BI2 __result)
        {
   typename iterator_traits<_BI1>::difference_type __n;
   for (__n = __last - __first; __n > 0; --__n)
     *--__result = *--__last;
   return __result;
 }
    };
#pragma line 552 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<bool _IsMove>
    struct __copy_move_backward<_IsMove, true, random_access_iterator_tag>
    {
      template<typename _Tp>
        static _Tp*
        __copy_move_b(const _Tp* __first, const _Tp* __last, _Tp* __result)
        {
   const ptrdiff_t _Num = __last - __first;
   if (_Num)
     __builtin_memmove(__result - _Num, __first, sizeof(_Tp) * _Num);
   return __result - _Num;
 }
    };
#pragma empty_line
  template<bool _IsMove, typename _BI1, typename _BI2>
    inline _BI2
    __copy_move_backward_a(_BI1 __first, _BI1 __last, _BI2 __result)
    {
      typedef typename iterator_traits<_BI1>::value_type _ValueType1;
      typedef typename iterator_traits<_BI2>::value_type _ValueType2;
      typedef typename iterator_traits<_BI1>::iterator_category _Category;
      const bool __simple = (__is_trivial(_ValueType1)
                      && __is_pointer<_BI1>::__value
                      && __is_pointer<_BI2>::__value
        && __are_same<_ValueType1, _ValueType2>::__value);
#pragma empty_line
      return std::__copy_move_backward<_IsMove, __simple,
                                _Category>::__copy_move_b(__first,
         __last,
         __result);
    }
#pragma empty_line
  template<bool _IsMove, typename _BI1, typename _BI2>
    inline _BI2
    __copy_move_backward_a2(_BI1 __first, _BI1 __last, _BI2 __result)
    {
      return _BI2(std::__copy_move_backward_a<_IsMove>
    (std::__niter_base(__first), std::__niter_base(__last),
     std::__niter_base(__result)));
    }
#pragma empty_line
  /**
   *  @brief Copies the range [first,last) into result.
   *  @ingroup mutating_algorithms
   *  @param  first  A bidirectional iterator.
   *  @param  last   A bidirectional iterator.
   *  @param  result A bidirectional iterator.
   *  @return   result - (first - last)
   *
   *  The function has the same effect as copy, but starts at the end of the
   *  range and works its way to the start, returning the start of the result.
   *  This inline function will boil down to a call to @c memmove whenever
   *  possible.  Failing that, if random access iterators are passed, then the
   *  loop count will be known (and therefore a candidate for compiler
   *  optimizations such as unrolling).
   *
   *  Result may not be in the range [first,last).  Use copy instead.  Note
   *  that the start of the output range may overlap [first,last).
  */
  template<typename _BI1, typename _BI2>
    inline _BI2
    copy_backward(_BI1 __first, _BI1 __last, _BI2 __result)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
                                                     ;
#pragma empty_line
      return (std::__copy_move_backward_a2<__is_move_iterator<_BI1>::__value>
       (std::__miter_base(__first), std::__miter_base(__last),
        __result));
    }
#pragma line 669 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h" 3
  template<typename _ForwardIterator, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<!__is_scalar<_Tp>::__value, void>::__type
    __fill_a(_ForwardIterator __first, _ForwardIterator __last,
       const _Tp& __value)
    {
      for (; __first != __last; ++__first)
 *__first = __value;
    }
#pragma empty_line
  template<typename _ForwardIterator, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_scalar<_Tp>::__value, void>::__type
    __fill_a(_ForwardIterator __first, _ForwardIterator __last,
      const _Tp& __value)
    {
      const _Tp __tmp = __value;
      for (; __first != __last; ++__first)
 *__first = __tmp;
    }
#pragma empty_line
  // Specialization: for char types we can use memset.
  template<typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_byte<_Tp>::__value, void>::__type
    __fill_a(_Tp* __first, _Tp* __last, const _Tp& __c)
    {
      const _Tp __tmp = __c;
      __builtin_memset(__first, static_cast<unsigned char>(__tmp),
         __last - __first);
    }
#pragma empty_line
  /**
   *  @brief Fills the range [first,last) with copies of value.
   *  @ingroup mutating_algorithms
   *  @param  first  A forward iterator.
   *  @param  last   A forward iterator.
   *  @param  value  A reference-to-const of arbitrary type.
   *  @return   Nothing.
   *
   *  This function fills a range with copies of the same value.  For char
   *  types filling contiguous areas of memory, this becomes an inline call
   *  to @c memset or @c wmemset.
  */
  template<typename _ForwardIterator, typename _Tp>
    inline void
    fill(_ForwardIterator __first, _ForwardIterator __last, const _Tp& __value)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
                                                     ;
#pragma empty_line
      std::__fill_a(std::__niter_base(__first), std::__niter_base(__last),
      __value);
    }
#pragma empty_line
  template<typename _OutputIterator, typename _Size, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<!__is_scalar<_Tp>::__value, _OutputIterator>::__type
    __fill_n_a(_OutputIterator __first, _Size __n, const _Tp& __value)
    {
      for (__decltype(__n + 0) __niter = __n;
    __niter > 0; --__niter, ++__first)
 *__first = __value;
      return __first;
    }
#pragma empty_line
  template<typename _OutputIterator, typename _Size, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_scalar<_Tp>::__value, _OutputIterator>::__type
    __fill_n_a(_OutputIterator __first, _Size __n, const _Tp& __value)
    {
      const _Tp __tmp = __value;
      for (__decltype(__n + 0) __niter = __n;
    __niter > 0; --__niter, ++__first)
 *__first = __tmp;
      return __first;
    }
#pragma empty_line
  template<typename _Size, typename _Tp>
    inline typename
    __gnu_cxx::__enable_if<__is_byte<_Tp>::__value, _Tp*>::__type
    __fill_n_a(_Tp* __first, _Size __n, const _Tp& __c)
    {
      std::__fill_a(__first, __first + __n, __c);
      return __first + __n;
    }
#pragma empty_line
  /**
   *  @brief Fills the range [first,first+n) with copies of value.
   *  @ingroup mutating_algorithms
   *  @param  first  An output iterator.
   *  @param  n      The count of copies to perform.
   *  @param  value  A reference-to-const of arbitrary type.
   *  @return   The iterator at first+n.
   *
   *  This function fills a range with copies of the same value.  For char
   *  types filling contiguous areas of memory, this becomes an inline call
   *  to @c memset or @ wmemset.
   *
   *  _GLIBCXX_RESOLVE_LIB_DEFECTS
   *  DR 865. More algorithms that throw away information
  */
  template<typename _OI, typename _Size, typename _Tp>
    inline _OI
    fill_n(_OI __first, _Size __n, const _Tp& __value)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
      return _OI(std::__fill_n_a(std::__niter_base(__first), __n, __value));
    }
#pragma empty_line
  template<bool _BoolType>
    struct __equal
    {
      template<typename _II1, typename _II2>
        static bool
        equal(_II1 __first1, _II1 __last1, _II2 __first2)
        {
   for (; __first1 != __last1; ++__first1, ++__first2)
     if (!(*__first1 == *__first2))
       return false;
   return true;
 }
    };
#pragma empty_line
  template<>
    struct __equal<true>
    {
      template<typename _Tp>
        static bool
        equal(const _Tp* __first1, const _Tp* __last1, const _Tp* __first2)
        {
   return !__builtin_memcmp(__first1, __first2, sizeof(_Tp)
       * (__last1 - __first1));
 }
    };
#pragma empty_line
  template<typename _II1, typename _II2>
    inline bool
    __equal_aux(_II1 __first1, _II1 __last1, _II2 __first2)
    {
      typedef typename iterator_traits<_II1>::value_type _ValueType1;
      typedef typename iterator_traits<_II2>::value_type _ValueType2;
      const bool __simple = (__is_integer<_ValueType1>::__value
                      && __is_pointer<_II1>::__value
                      && __is_pointer<_II2>::__value
        && __are_same<_ValueType1, _ValueType2>::__value);
#pragma empty_line
      return std::__equal<__simple>::equal(__first1, __last1, __first2);
    }
#pragma empty_line
#pragma empty_line
  template<typename, typename>
    struct __lc_rai
    {
      template<typename _II1, typename _II2>
        static _II1
        __newlast1(_II1, _II1 __last1, _II2, _II2)
        { return __last1; }
#pragma empty_line
      template<typename _II>
        static bool
        __cnd2(_II __first, _II __last)
        { return __first != __last; }
    };
#pragma empty_line
  template<>
    struct __lc_rai<random_access_iterator_tag, random_access_iterator_tag>
    {
      template<typename _RAI1, typename _RAI2>
        static _RAI1
        __newlast1(_RAI1 __first1, _RAI1 __last1,
     _RAI2 __first2, _RAI2 __last2)
        {
   const typename iterator_traits<_RAI1>::difference_type
     __diff1 = __last1 - __first1;
   const typename iterator_traits<_RAI2>::difference_type
     __diff2 = __last2 - __first2;
   return __diff2 < __diff1 ? __first1 + __diff2 : __last1;
 }
#pragma empty_line
      template<typename _RAI>
        static bool
        __cnd2(_RAI, _RAI)
        { return true; }
    };
#pragma empty_line
  template<bool _BoolType>
    struct __lexicographical_compare
    {
      template<typename _II1, typename _II2>
        static bool __lc(_II1, _II1, _II2, _II2);
    };
#pragma empty_line
  template<bool _BoolType>
    template<typename _II1, typename _II2>
      bool
      __lexicographical_compare<_BoolType>::
      __lc(_II1 __first1, _II1 __last1, _II2 __first2, _II2 __last2)
      {
 typedef typename iterator_traits<_II1>::iterator_category _Category1;
 typedef typename iterator_traits<_II2>::iterator_category _Category2;
 typedef std::__lc_rai<_Category1, _Category2> __rai_type;
#pragma empty_line
 __last1 = __rai_type::__newlast1(__first1, __last1,
      __first2, __last2);
 for (; __first1 != __last1 && __rai_type::__cnd2(__first2, __last2);
      ++__first1, ++__first2)
   {
     if (*__first1 < *__first2)
       return true;
     if (*__first2 < *__first1)
       return false;
   }
 return __first1 == __last1 && __first2 != __last2;
      }
#pragma empty_line
  template<>
    struct __lexicographical_compare<true>
    {
      template<typename _Tp, typename _Up>
        static bool
        __lc(const _Tp* __first1, const _Tp* __last1,
      const _Up* __first2, const _Up* __last2)
 {
   const size_t __len1 = __last1 - __first1;
   const size_t __len2 = __last2 - __first2;
   const int __result = __builtin_memcmp(__first1, __first2,
      std::min(__len1, __len2));
   return __result != 0 ? __result < 0 : __len1 < __len2;
 }
    };
#pragma empty_line
  template<typename _II1, typename _II2>
    inline bool
    __lexicographical_compare_aux(_II1 __first1, _II1 __last1,
      _II2 __first2, _II2 __last2)
    {
      typedef typename iterator_traits<_II1>::value_type _ValueType1;
      typedef typename iterator_traits<_II2>::value_type _ValueType2;
      const bool __simple =
 (__is_byte<_ValueType1>::__value && __is_byte<_ValueType2>::__value
  && !__gnu_cxx::__numeric_traits<_ValueType1>::__is_signed
  && !__gnu_cxx::__numeric_traits<_ValueType2>::__is_signed
  && __is_pointer<_II1>::__value
  && __is_pointer<_II2>::__value);
#pragma empty_line
      return std::__lexicographical_compare<__simple>::__lc(__first1, __last1,
           __first2, __last2);
    }
#pragma empty_line
  /**
   *  @brief Finds the first position in which @a val could be inserted
   *         without changing the ordering.
   *  @param  first   An iterator.
   *  @param  last    Another iterator.
   *  @param  val     The search term.
   *  @return         An iterator pointing to the first element <em>not less
   *                  than</em> @a val, or end() if every element is less than 
   *                  @a val.
   *  @ingroup binary_search_algorithms
  */
  template<typename _ForwardIterator, typename _Tp>
    _ForwardIterator
    lower_bound(_ForwardIterator __first, _ForwardIterator __last,
  const _Tp& __val)
    {
      typedef typename iterator_traits<_ForwardIterator>::value_type
 _ValueType;
      typedef typename iterator_traits<_ForwardIterator>::difference_type
 _DistanceType;
#pragma empty_line
      // concept requirements
#pragma empty_line
#pragma empty_line
                                                                  ;
#pragma empty_line
      _DistanceType __len = std::distance(__first, __last);
#pragma empty_line
      while (__len > 0)
 {
   _DistanceType __half = __len >> 1;
   _ForwardIterator __middle = __first;
   std::advance(__middle, __half);
   if (*__middle < __val)
     {
       __first = __middle;
       ++__first;
       __len = __len - __half - 1;
     }
   else
     __len = __half;
 }
      return __first;
    }
#pragma empty_line
  /// This is a helper function for the sort routines and for random.tcc.
  //  Precondition: __n > 0.
  template<typename _Size>
    inline _Size
    __lg(_Size __n)
    {
      _Size __k;
      for (__k = 0; __n != 0; __n >>= 1)
 ++__k;
      return __k - 1;
    }
#pragma empty_line
  inline int
  __lg(int __n)
  { return sizeof(int) * 8 - 1 - __builtin_clz(__n); }
#pragma empty_line
  inline long
  __lg(long __n)
  { return sizeof(long) * 8 - 1 - __builtin_clzl(__n); }
#pragma empty_line
  inline long long
  __lg(long long __n)
  { return sizeof(long long) * 8 - 1 - __builtin_clzll(__n); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  /**
   *  @brief Tests a range for element-wise equality.
   *  @ingroup non_mutating_algorithms
   *  @param  first1  An input iterator.
   *  @param  last1   An input iterator.
   *  @param  first2  An input iterator.
   *  @return   A boolean true or false.
   *
   *  This compares the elements of two ranges using @c == and returns true or
   *  false depending on whether all of the corresponding elements of the
   *  ranges are equal.
  */
  template<typename _II1, typename _II2>
    inline bool
    equal(_II1 __first1, _II1 __last1, _II2 __first2)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
                                                       ;
#pragma empty_line
      return std::__equal_aux(std::__niter_base(__first1),
         std::__niter_base(__last1),
         std::__niter_base(__first2));
    }
#pragma empty_line
  /**
   *  @brief Tests a range for element-wise equality.
   *  @ingroup non_mutating_algorithms
   *  @param  first1  An input iterator.
   *  @param  last1   An input iterator.
   *  @param  first2  An input iterator.
   *  @param binary_pred A binary predicate @link functors
   *                  functor@endlink.
   *  @return         A boolean true or false.
   *
   *  This compares the elements of two ranges using the binary_pred
   *  parameter, and returns true or
   *  false depending on whether all of the corresponding elements of the
   *  ranges are equal.
  */
  template<typename _IIter1, typename _IIter2, typename _BinaryPredicate>
    inline bool
    equal(_IIter1 __first1, _IIter1 __last1,
   _IIter2 __first2, _BinaryPredicate __binary_pred)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
                                                       ;
#pragma empty_line
      for (; __first1 != __last1; ++__first1, ++__first2)
 if (!bool(__binary_pred(*__first1, *__first2)))
   return false;
      return true;
    }
#pragma empty_line
  /**
   *  @brief Performs @b dictionary comparison on ranges.
   *  @ingroup sorting_algorithms
   *  @param  first1  An input iterator.
   *  @param  last1   An input iterator.
   *  @param  first2  An input iterator.
   *  @param  last2   An input iterator.
   *  @return   A boolean true or false.
   *
   *  <em>Returns true if the sequence of elements defined by the range
   *  [first1,last1) is lexicographically less than the sequence of elements
   *  defined by the range [first2,last2).  Returns false otherwise.</em>
   *  (Quoted from [25.3.8]/1.)  If the iterators are all character pointers,
   *  then this is an inline call to @c memcmp.
  */
  template<typename _II1, typename _II2>
    inline bool
    lexicographical_compare(_II1 __first1, _II1 __last1,
       _II2 __first2, _II2 __last2)
    {
      // concept requirements
      typedef typename iterator_traits<_II1>::value_type _ValueType1;
      typedef typename iterator_traits<_II2>::value_type _ValueType2;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
                                                       ;
                                                       ;
#pragma empty_line
      return std::__lexicographical_compare_aux(std::__niter_base(__first1),
      std::__niter_base(__last1),
      std::__niter_base(__first2),
      std::__niter_base(__last2));
    }
#pragma empty_line
  /**
   *  @brief Performs @b dictionary comparison on ranges.
   *  @ingroup sorting_algorithms
   *  @param  first1  An input iterator.
   *  @param  last1   An input iterator.
   *  @param  first2  An input iterator.
   *  @param  last2   An input iterator.
   *  @param  comp  A @link comparison_functors comparison functor@endlink.
   *  @return   A boolean true or false.
   *
   *  The same as the four-parameter @c lexicographical_compare, but uses the
   *  comp parameter instead of @c <.
  */
  template<typename _II1, typename _II2, typename _Compare>
    bool
    lexicographical_compare(_II1 __first1, _II1 __last1,
       _II2 __first2, _II2 __last2, _Compare __comp)
    {
      typedef typename iterator_traits<_II1>::iterator_category _Category1;
      typedef typename iterator_traits<_II2>::iterator_category _Category2;
      typedef std::__lc_rai<_Category1, _Category2> __rai_type;
#pragma empty_line
      // concept requirements
#pragma empty_line
#pragma empty_line
                                                       ;
                                                       ;
#pragma empty_line
      __last1 = __rai_type::__newlast1(__first1, __last1, __first2, __last2);
      for (; __first1 != __last1 && __rai_type::__cnd2(__first2, __last2);
    ++__first1, ++__first2)
 {
   if (__comp(*__first1, *__first2))
     return true;
   if (__comp(*__first2, *__first1))
     return false;
 }
      return __first1 == __last1 && __first2 != __last2;
    }
#pragma empty_line
  /**
   *  @brief Finds the places in ranges which don't match.
   *  @ingroup non_mutating_algorithms
   *  @param  first1  An input iterator.
   *  @param  last1   An input iterator.
   *  @param  first2  An input iterator.
   *  @return   A pair of iterators pointing to the first mismatch.
   *
   *  This compares the elements of two ranges using @c == and returns a pair
   *  of iterators.  The first iterator points into the first range, the
   *  second iterator points into the second range, and the elements pointed
   *  to by the iterators are not equal.
  */
  template<typename _InputIterator1, typename _InputIterator2>
    pair<_InputIterator1, _InputIterator2>
    mismatch(_InputIterator1 __first1, _InputIterator1 __last1,
      _InputIterator2 __first2)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
                                                       ;
#pragma empty_line
      while (__first1 != __last1 && *__first1 == *__first2)
        {
   ++__first1;
   ++__first2;
        }
      return pair<_InputIterator1, _InputIterator2>(__first1, __first2);
    }
#pragma empty_line
  /**
   *  @brief Finds the places in ranges which don't match.
   *  @ingroup non_mutating_algorithms
   *  @param  first1  An input iterator.
   *  @param  last1   An input iterator.
   *  @param  first2  An input iterator.
   *  @param binary_pred A binary predicate @link functors
   *         functor@endlink.
   *  @return   A pair of iterators pointing to the first mismatch.
   *
   *  This compares the elements of two ranges using the binary_pred
   *  parameter, and returns a pair
   *  of iterators.  The first iterator points into the first range, the
   *  second iterator points into the second range, and the elements pointed
   *  to by the iterators are not equal.
  */
  template<typename _InputIterator1, typename _InputIterator2,
    typename _BinaryPredicate>
    pair<_InputIterator1, _InputIterator2>
    mismatch(_InputIterator1 __first1, _InputIterator1 __last1,
      _InputIterator2 __first2, _BinaryPredicate __binary_pred)
    {
      // concept requirements
#pragma empty_line
#pragma empty_line
                                                       ;
#pragma empty_line
      while (__first1 != __last1 && bool(__binary_pred(*__first1, *__first2)))
        {
   ++__first1;
   ++__first2;
        }
      return pair<_InputIterator1, _InputIterator2>(__first1, __first2);
    }
#pragma empty_line
#pragma empty_line
} // namespace std
#pragma empty_line
// NB: This file is included within many other C++ includes, as a way
// of getting the base algorithms. So, make sure that parallel bits
// come in too if requested. 
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 1 3
// Position types -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/postypes.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iosfwd}
 */
#pragma empty_line
//
// ISO C++ 14882: 27.4.1 - Types
// ISO C++ 14882: 27.4.3 - Template class fpos
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 40 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 1 3
// -*- C++ -*- forwarding header.
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file include/cwchar
 *  This is a Standard C++ Library file.  You should @c \#include this file
 *  in your programs, rather than any of the @a *.h implementation files.
 *
 *  This is the C++ version of the Standard C Library header @c wchar.h,
 *  and its contents are (mostly) the same as that header, but are all
 *  contained in the namespace @c std (except for names which are defined
 *  as macros in C).
 */
#pragma empty_line
//
// ISO C++ 14882: 21.4
//
#pragma empty_line
#pragma empty_line
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/wchar.h" 1 3 4
/* Copyright (C) 1995-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *      ISO C99 Standard: 7.24
 *	Extended multibyte and wide character utilities	<wchar.h>
 */
#pragma line 31 "/usr/include/wchar.h" 3 4
/* Get FILE definition.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/stdio.h" 1 3 4
/* Define ISO C stdio on top of C++ iostreams.
   Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	ISO C99 Standard: 7.19 Input/output	<stdio.h>
 */
#pragma line 43 "/usr/include/stdio.h" 3 4
/* Define outside of namespace so the C++ is happy.  */
struct _IO_FILE;
#pragma empty_line
#pragma empty_line
/* The opaque type of streams.  This is the definition used elsewhere.  */
typedef struct _IO_FILE FILE;
#pragma line 63 "/usr/include/stdio.h" 3 4
/* The opaque type of streams.  This is the definition used elsewhere.  */
typedef struct _IO_FILE __FILE;
#pragma line 37 "/usr/include/wchar.h" 2 3 4
/* Get va_list definition.  */
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdarg.h" 1 3 4
/*===---- stdarg.h - Variable argument handling ----------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __builtin_va_list va_list;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* GCC always defines __va_copy, but does not define va_copy unless in c99 mode
 * or -ansi is not specified, since it was not part of C90.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Hack required to make standard headers work, at least on Ubuntu */
#pragma empty_line
typedef __builtin_va_list __gnuc_va_list;
#pragma line 40 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
/* wchar_t type related definitions.
   Copyright (C) 2000-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The fallback definitions, for when __WCHAR_MAX__ or __WCHAR_MIN__
   are not defined, give the right value and type as long as both int
   and wchar_t are 32-bit types.  Adding L'\0' to a constant value
   ensures that the type is correct; it is necessary to use (L'\0' +
   0) rather than just L'\0' so that the type in C++ is the promoted
   version of wchar_t rather than the distinct wchar_t type itself.
   Because wchar_t in preprocessor #if expressions is treated as
   intmax_t or uintmax_t, the expression (L'\0' - 1) would have the
   wrong value for WCHAR_MAX in such expressions and so cannot be used
   to define __WCHAR_MAX in the unsigned case.  */
#pragma line 42 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
/* Get size_t, wchar_t, wint_t and NULL from <stddef.h>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __typeof__(sizeof(int)) size_t;
#pragma line 56 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef unsigned int wint_t;
#pragma line 52 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
/* We try to get wint_t from <stddef.h>, but not all GCC versions define it
   there.  So define it ourselves if it remains undefined.  */
#pragma line 63 "/usr/include/wchar.h" 3 4
/* Work around problems with the <stddef.h> file which doesn't put
   wint_t in the std namespace.  */
#pragma line 73 "/usr/include/wchar.h" 3 4
/* Tell the caller that we provide correct C++ prototypes.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Conversion state information.  */
typedef struct
{
  int __count;
  union
  {
#pragma empty_line
    unsigned int __wch;
#pragma empty_line
#pragma empty_line
#pragma empty_line
    char __wchb[4];
  } __value; /* Value so far.  */
} __mbstate_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The rest of the file is only used if used if __need_mbstate_t is not
   defined.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Public type.  */
typedef __mbstate_t mbstate_t;
#pragma line 116 "/usr/include/wchar.h" 3 4
/* These constants might also be defined in <inttypes.h>.  */
#pragma line 125 "/usr/include/wchar.h" 3 4
/* For XPG4 compliance we have to define the stuff from <wctype.h> here
   as well.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
/* This incomplete type is defined in <time.h> but needed here because
   of `wcsftime'.  */
struct tm;
#pragma empty_line
/* XXX We have to clean this up at some point.  Since tm is in the std
   namespace but wcsftime is in __c99 the type wouldn't be found
   without inserting it in the global namespace.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Copy SRC to DEST.  */
extern wchar_t *wcscpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) throw ();
/* Copy no more than N wide-characters of SRC to DEST.  */
extern wchar_t *wcsncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     throw ();
#pragma empty_line
/* Append SRC onto DEST.  */
extern wchar_t *wcscat (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) throw ();
/* Append no more than N wide-characters of SRC onto DEST.  */
extern wchar_t *wcsncat (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     throw ();
#pragma empty_line
/* Compare S1 and S2.  */
extern int wcscmp (const wchar_t *__s1, const wchar_t *__s2)
     throw () __attribute__ ((__pure__));
/* Compare N wide-characters of S1 and S2.  */
extern int wcsncmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Compare S1 and S2, ignoring case.  */
extern int wcscasecmp (const wchar_t *__s1, const wchar_t *__s2) throw ();
#pragma empty_line
/* Compare no more than N chars of S1 and S2, ignoring case.  */
extern int wcsncasecmp (const wchar_t *__s1, const wchar_t *__s2,
   size_t __n) throw ();
#pragma empty_line
/* Similar to the two functions above but take the information from
   the provided locale and not the global locale.  */
#pragma empty_line
#pragma line 1 "/usr/include/xlocale.h" 1 3 4
/* Definition of locale datatype.
   Copyright (C) 1997-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
   Contributed by Ulrich Drepper <drepper@cygnus.com>, 1997.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Structure for reentrant locale using functions.  This is an
   (almost) opaque type for the user level programs.  The file and
   this data structure is not standardized.  Don't rely on it.  It can
   go away without warning.  */
typedef struct __locale_struct
{
  /* Note: LC_ALL is not a valid index into this array.  */
  struct __locale_data *__locales[13]; /* 13 = __LC_LAST. */
#pragma empty_line
  /* To increase the speed of this solution we add some special members.  */
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
#pragma empty_line
  /* Note: LC_ALL is not a valid index into this array.  */
  const char *__names[13];
} *__locale_t;
#pragma empty_line
/* POSIX 2008 makes locale_t official.  */
typedef __locale_t locale_t;
#pragma line 181 "/usr/include/wchar.h" 2 3 4
#pragma empty_line
extern int wcscasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
    __locale_t __loc) throw ();
#pragma empty_line
extern int wcsncasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
     size_t __n, __locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Compare S1 and S2, both interpreted as appropriate to the
   LC_COLLATE category of the current locale.  */
extern int wcscoll (const wchar_t *__s1, const wchar_t *__s2) throw ();
/* Transform S2 into array pointed to by S1 such that if wcscmp is
   applied to two transformed strings the result is the as applying
   `wcscoll' to the original strings.  */
extern size_t wcsxfrm (wchar_t *__restrict __s1,
         const wchar_t *__restrict __s2, size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Similar to the two functions above but take the information from
   the provided locale and not the global locale.  */
#pragma empty_line
/* Compare S1 and S2, both interpreted as appropriate to the
   LC_COLLATE category of the given locale.  */
extern int wcscoll_l (const wchar_t *__s1, const wchar_t *__s2,
        __locale_t __loc) throw ();
#pragma empty_line
/* Transform S2 into array pointed to by S1 such that if wcscmp is
   applied to two transformed strings the result is the as applying
   `wcscoll' to the original strings.  */
extern size_t wcsxfrm_l (wchar_t *__s1, const wchar_t *__s2,
    size_t __n, __locale_t __loc) throw ();
#pragma empty_line
/* Duplicate S, returning an identical malloc'd string.  */
extern wchar_t *wcsdup (const wchar_t *__s) throw () __attribute__ ((__malloc__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Find the first occurrence of WC in WCS.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcschr (const wchar_t *__wcs, wchar_t __wc)
     throw () __attribute__ ((__pure__));
#pragma empty_line
/* Find the last occurrence of WC in WCS.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcsrchr (const wchar_t *__wcs, wchar_t __wc)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This function is similar to `wcschr'.  But it returns a pointer to
   the closing NUL wide character in case C is not found in S.  */
extern wchar_t *wcschrnul (const wchar_t *__s, wchar_t __wc)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return the length of the initial segmet of WCS which
   consists entirely of wide characters not in REJECT.  */
extern size_t wcscspn (const wchar_t *__wcs, const wchar_t *__reject)
     throw () __attribute__ ((__pure__));
/* Return the length of the initial segmet of WCS which
   consists entirely of wide characters in  ACCEPT.  */
extern size_t wcsspn (const wchar_t *__wcs, const wchar_t *__accept)
     throw () __attribute__ ((__pure__));
/* Find the first occurrence in WCS of any character in ACCEPT.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcspbrk (const wchar_t *__wcs, const wchar_t *__accept)
     throw () __attribute__ ((__pure__));
#pragma empty_line
/* Find the first occurrence of NEEDLE in HAYSTACK.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcsstr (const wchar_t *__haystack, const wchar_t *__needle)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
/* Divide WCS into tokens separated by characters in DELIM.  */
extern wchar_t *wcstok (wchar_t *__restrict __s,
   const wchar_t *__restrict __delim,
   wchar_t **__restrict __ptr) throw ();
#pragma empty_line
/* Return the number of wide characters in S.  */
extern size_t wcslen (const wchar_t *__s) throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Another name for `wcsstr' from XPG4.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wcswcs (const wchar_t *__haystack, const wchar_t *__needle)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return the number of wide characters in S, but at most MAXLEN.  */
extern size_t wcsnlen (const wchar_t *__s, size_t __maxlen)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Search N wide characters of S for C.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern wchar_t *wmemchr (const wchar_t *__s, wchar_t __c, size_t __n)
     throw () __attribute__ ((__pure__));
#pragma empty_line
#pragma empty_line
/* Compare N wide characters of S1 and S2.  */
extern int wmemcmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     throw () __attribute__ ((__pure__));
#pragma empty_line
/* Copy N wide characters of SRC to DEST.  */
extern wchar_t *wmemcpy (wchar_t *__restrict __s1,
    const wchar_t *__restrict __s2, size_t __n) throw ();
#pragma empty_line
/* Copy N wide characters of SRC to DEST, guaranteeing
   correct behavior for overlapping strings.  */
extern wchar_t *wmemmove (wchar_t *__s1, const wchar_t *__s2, size_t __n)
     throw ();
#pragma empty_line
/* Set N wide characters of S to C.  */
extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Copy N wide characters of SRC to DEST and return pointer to following
   wide character.  */
extern wchar_t *wmempcpy (wchar_t *__restrict __s1,
     const wchar_t *__restrict __s2, size_t __n)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Determine whether C constitutes a valid (one-byte) multibyte
   character.  */
extern wint_t btowc (int __c) throw ();
#pragma empty_line
/* Determine whether C corresponds to a member of the extended
   character set whose multibyte representation is a single byte.  */
extern int wctob (wint_t __c) throw ();
#pragma empty_line
/* Determine whether PS points to an object representing the initial
   state.  */
extern int mbsinit (const mbstate_t *__ps) throw () __attribute__ ((__pure__));
#pragma empty_line
/* Write wide character representation of multibyte character pointed
   to by S to PWC.  */
extern size_t mbrtowc (wchar_t *__restrict __pwc,
         const char *__restrict __s, size_t __n,
         mbstate_t *__restrict __p) throw ();
#pragma empty_line
/* Write multibyte representation of wide character WC to S.  */
extern size_t wcrtomb (char *__restrict __s, wchar_t __wc,
         mbstate_t *__restrict __ps) throw ();
#pragma empty_line
/* Return number of bytes in multibyte character pointed to by S.  */
extern size_t __mbrlen (const char *__restrict __s, size_t __n,
   mbstate_t *__restrict __ps) throw ();
extern size_t mbrlen (const char *__restrict __s, size_t __n,
        mbstate_t *__restrict __ps) throw ();
#pragma line 406 "/usr/include/wchar.h" 3 4
/* Write wide character representation of multibyte character string
   SRC to DST.  */
extern size_t mbsrtowcs (wchar_t *__restrict __dst,
    const char **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) throw ();
#pragma empty_line
/* Write multibyte character representation of wide character string
   SRC to DST.  */
extern size_t wcsrtombs (char *__restrict __dst,
    const wchar_t **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Write wide character representation of at most NMC bytes of the
   multibyte character string SRC to DST.  */
extern size_t mbsnrtowcs (wchar_t *__restrict __dst,
     const char **__restrict __src, size_t __nmc,
     size_t __len, mbstate_t *__restrict __ps) throw ();
#pragma empty_line
/* Write multibyte character representation of at most NWC characters
   from the wide character string SRC to DST.  */
extern size_t wcsnrtombs (char *__restrict __dst,
     const wchar_t **__restrict __src,
     size_t __nwc, size_t __len,
     mbstate_t *__restrict __ps) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The following functions are extensions found in X/Open CAE.  */
#pragma empty_line
/* Determine number of column positions required for C.  */
extern int wcwidth (wchar_t __c) throw ();
#pragma empty_line
/* Determine number of column positions required for first N wide
   characters (or fewer if S ends before this) in S.  */
extern int wcswidth (const wchar_t *__s, size_t __n) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Convert initial portion of the wide string NPTR to `double'
   representation.  */
extern double wcstod (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Likewise for `float' and `long double' sizes of floating-point numbers.  */
extern float wcstof (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) throw ();
extern long double wcstold (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Convert initial portion of wide string NPTR to `long int'
   representation.  */
extern long int wcstol (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, int __base) throw ();
#pragma empty_line
/* Convert initial portion of wide string NPTR to `unsigned long int'
   representation.  */
extern unsigned long int wcstoul (const wchar_t *__restrict __nptr,
      wchar_t **__restrict __endptr, int __base)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Convert initial portion of wide string NPTR to `long long int'
   representation.  */
__extension__
extern long long int wcstoll (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, int __base)
     throw ();
#pragma empty_line
/* Convert initial portion of wide string NPTR to `unsigned long long int'
   representation.  */
__extension__
extern unsigned long long int wcstoull (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr,
     int __base) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Convert initial portion of wide string NPTR to `long long int'
   representation.  */
__extension__
extern long long int wcstoq (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr, int __base)
     throw ();
#pragma empty_line
/* Convert initial portion of wide string NPTR to `unsigned long long int'
   representation.  */
__extension__
extern unsigned long long int wcstouq (const wchar_t *__restrict __nptr,
           wchar_t **__restrict __endptr,
           int __base) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The concept of one static locale per category is not very well
   thought out.  Many applications will need to process its data using
   information from several different locales.  Another application is
   the implementation of the internationalization handling in the
   upcoming ISO C++ standard library.  To support this another set of
   the functions using locale data exist which have an additional
   argument.
#pragma empty_line
   Attention: all these functions are *not* standardized in any form.
   This is a proof-of-concept implementation.  */
#pragma empty_line
/* Structure for reentrant locale using functions.  This is an
   (almost) opaque type for the user level programs.  */
#pragma empty_line
#pragma empty_line
/* Special versions of the functions above which take the locale to
   use as an additional parameter.  */
extern long int wcstol_l (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr, int __base,
     __locale_t __loc) throw ();
#pragma empty_line
extern unsigned long int wcstoul_l (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr,
        int __base, __locale_t __loc) throw ();
#pragma empty_line
__extension__
extern long long int wcstoll_l (const wchar_t *__restrict __nptr,
    wchar_t **__restrict __endptr,
    int __base, __locale_t __loc) throw ();
#pragma empty_line
__extension__
extern unsigned long long int wcstoull_l (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr,
       int __base, __locale_t __loc)
     throw ();
#pragma empty_line
extern double wcstod_l (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, __locale_t __loc)
     throw ();
#pragma empty_line
extern float wcstof_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, __locale_t __loc)
     throw ();
#pragma empty_line
extern long double wcstold_l (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr,
         __locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Copy SRC to DEST, returning the address of the terminating L'\0' in
   DEST.  */
extern wchar_t *wcpcpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) throw ();
#pragma empty_line
/* Copy no more than N characters of SRC to DEST, returning the address of
   the last character written into DEST.  */
extern wchar_t *wcpncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     throw ();
#pragma empty_line
#pragma empty_line
/* Wide character I/O functions.  */
#pragma empty_line
/* Like OPEN_MEMSTREAM, but the stream is wide oriented and produces
   a wide character string.  */
extern __FILE *open_wmemstream (wchar_t **__bufloc, size_t *__sizeloc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Select orientation for stream.  */
extern int fwide (__FILE *__fp, int __mode) throw ();
#pragma empty_line
#pragma empty_line
/* Write formatted output to STREAM.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fwprintf (__FILE *__restrict __stream,
       const wchar_t *__restrict __format, ...)
     /* __attribute__ ((__format__ (__wprintf__, 2, 3))) */;
/* Write formatted output to stdout.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int wprintf (const wchar_t *__restrict __format, ...)
     /* __attribute__ ((__format__ (__wprintf__, 1, 2))) */;
/* Write formatted output of at most N characters to S.  */
extern int swprintf (wchar_t *__restrict __s, size_t __n,
       const wchar_t *__restrict __format, ...)
     throw () /* __attribute__ ((__format__ (__wprintf__, 3, 4))) */;
#pragma empty_line
/* Write formatted output to S from argument list ARG.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vfwprintf (__FILE *__restrict __s,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
     /* __attribute__ ((__format__ (__wprintf__, 2, 0))) */;
/* Write formatted output to stdout from argument list ARG.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vwprintf (const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
     /* __attribute__ ((__format__ (__wprintf__, 1, 0))) */;
/* Write formatted output of at most N character to S from argument
   list ARG.  */
extern int vswprintf (wchar_t *__restrict __s, size_t __n,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
     throw () /* __attribute__ ((__format__ (__wprintf__, 3, 0))) */;
#pragma empty_line
#pragma empty_line
/* Read formatted input from STREAM.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fwscanf (__FILE *__restrict __stream,
      const wchar_t *__restrict __format, ...)
     /* __attribute__ ((__format__ (__wscanf__, 2, 3))) */;
/* Read formatted input from stdin.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int wscanf (const wchar_t *__restrict __format, ...)
     /* __attribute__ ((__format__ (__wscanf__, 1, 2))) */;
/* Read formatted input from S.  */
extern int swscanf (const wchar_t *__restrict __s,
      const wchar_t *__restrict __format, ...)
     throw () /* __attribute__ ((__format__ (__wscanf__, 2, 3))) */;
#pragma line 685 "/usr/include/wchar.h" 3 4
/* Read formatted input from S into argument list ARG.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vfwscanf (__FILE *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
     /* __attribute__ ((__format__ (__wscanf__, 2, 0))) */;
/* Read formatted input from stdin into argument list ARG.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int vwscanf (const wchar_t *__restrict __format,
      __gnuc_va_list __arg)
     /* __attribute__ ((__format__ (__wscanf__, 1, 0))) */;
/* Read formatted input from S into argument list ARG.  */
extern int vswscanf (const wchar_t *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
     throw () /* __attribute__ ((__format__ (__wscanf__, 2, 0))) */;
#pragma line 741 "/usr/include/wchar.h" 3 4
/* Read a character from STREAM.
#pragma empty_line
   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern wint_t fgetwc (__FILE *__stream);
extern wint_t getwc (__FILE *__stream);
#pragma empty_line
/* Read a character from stdin.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern wint_t getwchar (void);
#pragma empty_line
#pragma empty_line
/* Write a character to STREAM.
#pragma empty_line
   These functions are possible cancellation points and therefore not
   marked with __THROW.  */
extern wint_t fputwc (wchar_t __wc, __FILE *__stream);
extern wint_t putwc (wchar_t __wc, __FILE *__stream);
#pragma empty_line
/* Write a character to stdout.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern wint_t putwchar (wchar_t __wc);
#pragma empty_line
#pragma empty_line
/* Get a newline-terminated wide character string of finite length
   from STREAM.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern wchar_t *fgetws (wchar_t *__restrict __ws, int __n,
   __FILE *__restrict __stream);
#pragma empty_line
/* Write a string to STREAM.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int fputws (const wchar_t *__restrict __ws,
     __FILE *__restrict __stream);
#pragma empty_line
#pragma empty_line
/* Push a character back onto the input buffer of STREAM.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern wint_t ungetwc (wint_t __wc, __FILE *__stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* These are defined to be equivalent to the `char' functions defined
   in POSIX.1:1996.
#pragma empty_line
   These functions are not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation they are cancellation points and
   therefore not marked with __THROW.  */
extern wint_t getwc_unlocked (__FILE *__stream);
extern wint_t getwchar_unlocked (void);
#pragma empty_line
/* This is the wide character version of a GNU extension.
#pragma empty_line
   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern wint_t fgetwc_unlocked (__FILE *__stream);
#pragma empty_line
/* Faster version when locking is not necessary.
#pragma empty_line
   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern wint_t fputwc_unlocked (wchar_t __wc, __FILE *__stream);
#pragma empty_line
/* These are defined to be equivalent to the `char' functions defined
   in POSIX.1:1996.
#pragma empty_line
   These functions are not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation they are cancellation points and
   therefore not marked with __THROW.  */
extern wint_t putwc_unlocked (wchar_t __wc, __FILE *__stream);
extern wint_t putwchar_unlocked (wchar_t __wc);
#pragma empty_line
#pragma empty_line
/* This function does the same as `fgetws' but does not lock the stream.
#pragma empty_line
   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern wchar_t *fgetws_unlocked (wchar_t *__restrict __ws, int __n,
     __FILE *__restrict __stream);
#pragma empty_line
/* This function does the same as `fputws' but does not lock the stream.
#pragma empty_line
   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int fputws_unlocked (const wchar_t *__restrict __ws,
       __FILE *__restrict __stream);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Format TP into S according to FORMAT.
   Write no more than MAXSIZE wide characters and return the number
   of wide characters written, or 0 if it would exceed MAXSIZE.  */
extern size_t wcsftime (wchar_t *__restrict __s, size_t __maxsize,
   const wchar_t *__restrict __format,
   const struct tm *__restrict __tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Similar to `wcsftime' but takes the information from
   the provided locale and not the global locale.  */
extern size_t wcsftime_l (wchar_t *__restrict __s, size_t __maxsize,
     const wchar_t *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
/* The X/Open standard demands that most of the functions defined in
   the <wctype.h> header must also appear here.  This is probably
   because some X/Open members wrote their implementation before the
   ISO C standard was published and introduced the better solution.
   We have to provide these definitions for compliance reasons but we
   do this nonsense only if really necessary.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Define some macros helping to catch buffer overflows.  */
#pragma line 891 "/usr/include/wchar.h" 3 4
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Undefine all __need_* constants in case we are included to get those
   constants but the whole file was already read.  */
#pragma line 46 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Need to do a bit of trickery here with mbstate_t as char_traits
// assumes it is in wchar.h, regardless of wchar_t specializations.
#pragma line 63 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
namespace std
{
  using ::mbstate_t;
} // namespace std
#pragma empty_line
// Get rid of those macros defined in <wchar.h> in lieu of real functions.
#pragma line 136 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  using ::wint_t;
#pragma empty_line
  using ::btowc;
  using ::fgetwc;
  using ::fgetws;
  using ::fputwc;
  using ::fputws;
  using ::fwide;
  using ::fwprintf;
  using ::fwscanf;
  using ::getwc;
  using ::getwchar;
  using ::mbrlen;
  using ::mbrtowc;
  using ::mbsinit;
  using ::mbsrtowcs;
  using ::putwc;
  using ::putwchar;
#pragma empty_line
  using ::swprintf;
#pragma empty_line
  using ::swscanf;
  using ::ungetwc;
  using ::vfwprintf;
#pragma empty_line
  using ::vfwscanf;
#pragma empty_line
#pragma empty_line
  using ::vswprintf;
#pragma empty_line
#pragma empty_line
  using ::vswscanf;
#pragma empty_line
  using ::vwprintf;
#pragma empty_line
  using ::vwscanf;
#pragma empty_line
  using ::wcrtomb;
  using ::wcscat;
  using ::wcscmp;
  using ::wcscoll;
  using ::wcscpy;
  using ::wcscspn;
  using ::wcsftime;
  using ::wcslen;
  using ::wcsncat;
  using ::wcsncmp;
  using ::wcsncpy;
  using ::wcsrtombs;
  using ::wcsspn;
  using ::wcstod;
#pragma empty_line
  using ::wcstof;
#pragma empty_line
  using ::wcstok;
  using ::wcstol;
  using ::wcstoul;
  using ::wcsxfrm;
  using ::wctob;
  using ::wmemcmp;
  using ::wmemcpy;
  using ::wmemmove;
  using ::wmemset;
  using ::wprintf;
  using ::wscanf;
  using ::wcschr;
  using ::wcspbrk;
  using ::wcsrchr;
  using ::wcsstr;
  using ::wmemchr;
#pragma empty_line
#pragma empty_line
  inline wchar_t*
  wcschr(wchar_t* __p, wchar_t __c)
  { return wcschr(const_cast<const wchar_t*>(__p), __c); }
#pragma empty_line
  inline wchar_t*
  wcspbrk(wchar_t* __s1, const wchar_t* __s2)
  { return wcspbrk(const_cast<const wchar_t*>(__s1), __s2); }
#pragma empty_line
  inline wchar_t*
  wcsrchr(wchar_t* __p, wchar_t __c)
  { return wcsrchr(const_cast<const wchar_t*>(__p), __c); }
#pragma empty_line
  inline wchar_t*
  wcsstr(wchar_t* __s1, const wchar_t* __s2)
  { return wcsstr(const_cast<const wchar_t*>(__s1), __s2); }
#pragma empty_line
  inline wchar_t*
  wmemchr(wchar_t* __p, wchar_t __c, size_t __n)
  { return wmemchr(const_cast<const wchar_t*>(__p), __c, __n); }
#pragma empty_line
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx
{
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  using ::wcstold;
#pragma line 258 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
  using ::wcstoll;
  using ::wcstoull;
#pragma empty_line
} // namespace __gnu_cxx
#pragma empty_line
namespace std
{
  using ::__gnu_cxx::wcstold;
  using ::__gnu_cxx::wcstoll;
  using ::__gnu_cxx::wcstoull;
} // namespace
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 2 3
#pragma empty_line
// XXX If <stdint.h> is really needed, make sure to define the macros
// before including it, in order not to break <tr1/cstdint> (and <cstdint>
// in C++0x).  Reconsider all this as soon as possible...
#pragma line 69 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // The types streamoff, streampos and wstreampos and the class
  // template fpos<> are described in clauses 21.1.2, 21.1.3, 27.1.2,
  // 27.2, 27.4.1, 27.4.3 and D.6. Despite all this verbiage, the
  // behaviour of these types is mostly implementation defined or
  // unspecified. The behaviour in this implementation is as noted
  // below.
#pragma empty_line
  /**
   *  @brief  Type used by fpos, char_traits<char>, and char_traits<wchar_t>.
   *
   *  In clauses 21.1.3.1 and 27.4.1 streamoff is described as an
   *  implementation defined type.
   *  Note: In versions of GCC up to and including GCC 3.3, streamoff
   *  was typedef long.
  */
#pragma empty_line
  typedef long streamoff;
#pragma line 98 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
  /// Integral type for I/O operation counts and buffer sizes.
  typedef ptrdiff_t streamsize; // Signed integral type
#pragma empty_line
  /**
   *  @brief  Class representing stream positions.
   *
   *  The standard places no requirements upon the template parameter StateT.
   *  In this implementation StateT must be DefaultConstructible,
   *  CopyConstructible and Assignable.  The standard only requires that fpos
   *  should contain a member of type StateT. In this implementation it also
   *  contains an offset stored as a signed integer.
   *
   *  @param  StateT  Type passed to and returned from state().
   */
  template<typename _StateT>
    class fpos
    {
    private:
      streamoff _M_off;
      _StateT _M_state;
#pragma empty_line
    public:
      // The standard doesn't require that fpos objects can be default
      // constructed. This implementation provides a default
      // constructor that initializes the offset to 0 and default
      // constructs the state.
      fpos()
      : _M_off(0), _M_state() { }
#pragma empty_line
      // The standard requires that fpos objects can be constructed
      // from streamoff objects using the constructor syntax, and
      // fails to give any meaningful semantics. In this
      // implementation implicit conversion is also allowed, and this
      // constructor stores the streamoff as the offset and default
      // constructs the state.
      /// Construct position from offset.
      fpos(streamoff __off)
      : _M_off(__off), _M_state() { }
#pragma empty_line
      /// Convert to streamoff.
      operator streamoff() const { return _M_off; }
#pragma empty_line
      /// Remember the value of @a st.
      void
      state(_StateT __st)
      { _M_state = __st; }
#pragma empty_line
      /// Return the last set value of @a st.
      _StateT
      state() const
      { return _M_state; }
#pragma empty_line
      // The standard requires that this operator must be defined, but
      // gives no semantics. In this implementation it just adds its
      // argument to the stored offset and returns *this.
      /// Add offset to this position.
      fpos&
      operator+=(streamoff __off)
      {
 _M_off += __off;
 return *this;
      }
#pragma empty_line
      // The standard requires that this operator must be defined, but
      // gives no semantics. In this implementation it just subtracts
      // its argument from the stored offset and returns *this.
      /// Subtract offset from this position.
      fpos&
      operator-=(streamoff __off)
      {
 _M_off -= __off;
 return *this;
      }
#pragma empty_line
      // The standard requires that this operator must be defined, but
      // defines its semantics only in terms of operator-. In this
      // implementation it constructs a copy of *this, adds the
      // argument to that copy using operator+= and then returns the
      // copy.
      /// Add position and offset.
      fpos
      operator+(streamoff __off) const
      {
 fpos __pos(*this);
 __pos += __off;
 return __pos;
      }
#pragma empty_line
      // The standard requires that this operator must be defined, but
      // defines its semantics only in terms of operator+. In this
      // implementation it constructs a copy of *this, subtracts the
      // argument from that copy using operator-= and then returns the
      // copy.
      /// Subtract offset from position.
      fpos
      operator-(streamoff __off) const
      {
 fpos __pos(*this);
 __pos -= __off;
 return __pos;
      }
#pragma empty_line
      // The standard requires that this operator must be defined, but
      // defines its semantics only in terms of operator+. In this
      // implementation it returns the difference between the offset
      // stored in *this and in the argument.
      /// Subtract position to return offset.
      streamoff
      operator-(const fpos& __other) const
      { return _M_off - __other._M_off; }
    };
#pragma empty_line
  // The standard only requires that operator== must be an
  // equivalence relation. In this implementation two fpos<StateT>
  // objects belong to the same equivalence class if the contained
  // offsets compare equal.
  /// Test if equivalent to another position.
  template<typename _StateT>
    inline bool
    operator==(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
    { return streamoff(__lhs) == streamoff(__rhs); }
#pragma empty_line
  template<typename _StateT>
    inline bool
    operator!=(const fpos<_StateT>& __lhs, const fpos<_StateT>& __rhs)
    { return streamoff(__lhs) != streamoff(__rhs); }
#pragma empty_line
  // Clauses 21.1.3.1 and 21.1.3.2 describe streampos and wstreampos
  // as implementation defined types, but clause 27.2 requires that
  // they must both be typedefs for fpos<mbstate_t>
  /// File position for char streams.
  typedef fpos<mbstate_t> streampos;
  /// File position for wchar_t streams.
  typedef fpos<mbstate_t> wstreampos;
#pragma line 241 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/postypes.h" 3
} // namespace
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 1 3
// -*- C++ -*- forwarding header.
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file include/cwchar
 *  This is a Standard C++ Library file.  You should @c \#include this file
 *  in your programs, rather than any of the @a *.h implementation files.
 *
 *  This is the C++ version of the Standard C Library header @c wchar.h,
 *  and its contents are (mostly) the same as that header, but are all
 *  contained in the namespace @c std (except for names which are defined
 *  as macros in C).
 */
#pragma empty_line
//
// ISO C++ 14882: 21.4
//
#pragma empty_line
#pragma empty_line
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/wchar.h" 1 3 4
/* Copyright (C) 1995-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *      ISO C99 Standard: 7.24
 *	Extended multibyte and wide character utilities	<wchar.h>
 */
#pragma line 897 "/usr/include/wchar.h" 3 4
/* Undefine all __need_* constants in case we are included to get those
   constants but the whole file was already read.  */
#pragma line 46 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cwchar" 2 3
#pragma line 43 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/char_traits.h" 2 3
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /**
   *  @brief  Mapping from character type to associated types.
   *
   *  @note This is an implementation class for the generic version
   *  of char_traits.  It defines int_type, off_type, pos_type, and
   *  state_type.  By default these are unsigned long, streamoff,
   *  streampos, and mbstate_t.  Users who need a different set of
   *  types, but who don't need to change the definitions of any function
   *  defined in char_traits, can specialize __gnu_cxx::_Char_types
   *  while leaving __gnu_cxx::char_traits alone. */
  template<typename _CharT>
    struct _Char_types
    {
      typedef unsigned long int_type;
      typedef std::streampos pos_type;
      typedef std::streamoff off_type;
      typedef std::mbstate_t state_type;
    };
#pragma empty_line
#pragma empty_line
  /**
   *  @brief  Base class used to implement std::char_traits.
   *
   *  @note For any given actual character type, this definition is
   *  probably wrong.  (Most of the member functions are likely to be
   *  right, but the int_type and state_type typedefs, and the eof()
   *  member function, are likely to be wrong.)  The reason this class
   *  exists is so users can specialize it.  Classes in namespace std
   *  may not be specialized for fundamental types, but classes in
   *  namespace __gnu_cxx may be.
   *
   *  See http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt05ch13s03.html
   *  for advice on how to make use of this class for @a unusual character
   *  types. Also, check out include/ext/pod_char_traits.h.  
   */
  template<typename _CharT>
    struct char_traits
    {
      typedef _CharT char_type;
      typedef typename _Char_types<_CharT>::int_type int_type;
      typedef typename _Char_types<_CharT>::pos_type pos_type;
      typedef typename _Char_types<_CharT>::off_type off_type;
      typedef typename _Char_types<_CharT>::state_type state_type;
#pragma empty_line
      static void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }
#pragma empty_line
      static bool
      eq(const char_type& __c1, const char_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static bool
      lt(const char_type& __c1, const char_type& __c2)
      { return __c1 < __c2; }
#pragma empty_line
      static int
      compare(const char_type* __s1, const char_type* __s2, std::size_t __n);
#pragma empty_line
      static std::size_t
      length(const char_type* __s);
#pragma empty_line
      static const char_type*
      find(const char_type* __s, std::size_t __n, const char_type& __a);
#pragma empty_line
      static char_type*
      move(char_type* __s1, const char_type* __s2, std::size_t __n);
#pragma empty_line
      static char_type*
      copy(char_type* __s1, const char_type* __s2, std::size_t __n);
#pragma empty_line
      static char_type*
      assign(char_type* __s, std::size_t __n, char_type __a);
#pragma empty_line
      static char_type
      to_char_type(const int_type& __c)
      { return static_cast<char_type>(__c); }
#pragma empty_line
      static int_type
      to_int_type(const char_type& __c)
      { return static_cast<int_type>(__c); }
#pragma empty_line
      static bool
      eq_int_type(const int_type& __c1, const int_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static int_type
      eof()
      { return static_cast<int_type>(-1); }
#pragma empty_line
      static int_type
      not_eof(const int_type& __c)
      { return !eq_int_type(__c, eof()) ? __c : to_int_type(char_type()); }
    };
#pragma empty_line
  template<typename _CharT>
    int
    char_traits<_CharT>::
    compare(const char_type* __s1, const char_type* __s2, std::size_t __n)
    {
      for (std::size_t __i = 0; __i < __n; ++__i)
 if (lt(__s1[__i], __s2[__i]))
   return -1;
 else if (lt(__s2[__i], __s1[__i]))
   return 1;
      return 0;
    }
#pragma empty_line
  template<typename _CharT>
    std::size_t
    char_traits<_CharT>::
    length(const char_type* __p)
    {
      std::size_t __i = 0;
      while (!eq(__p[__i], char_type()))
        ++__i;
      return __i;
    }
#pragma empty_line
  template<typename _CharT>
    const typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    find(const char_type* __s, std::size_t __n, const char_type& __a)
    {
      for (std::size_t __i = 0; __i < __n; ++__i)
        if (eq(__s[__i], __a))
          return __s + __i;
      return 0;
    }
#pragma empty_line
  template<typename _CharT>
    typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    move(char_type* __s1, const char_type* __s2, std::size_t __n)
    {
      return static_cast<_CharT*>(__builtin_memmove(__s1, __s2,
          __n * sizeof(char_type)));
    }
#pragma empty_line
  template<typename _CharT>
    typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    copy(char_type* __s1, const char_type* __s2, std::size_t __n)
    {
      // NB: Inline std::copy so no recursive dependencies.
      std::copy(__s2, __s2 + __n, __s1);
      return __s1;
    }
#pragma empty_line
  template<typename _CharT>
    typename char_traits<_CharT>::char_type*
    char_traits<_CharT>::
    assign(char_type* __s, std::size_t __n, char_type __a)
    {
      // NB: Inline std::fill_n so no recursive dependencies.
      std::fill_n(__s, __n, __a);
      return __s;
    }
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // 21.1
  /**
   *  @brief  Basis for explicit traits specializations.
   *
   *  @note  For any given actual character type, this definition is
   *  probably wrong.  Since this is just a thin wrapper around
   *  __gnu_cxx::char_traits, it is possible to achieve a more
   *  appropriate definition by specializing __gnu_cxx::char_traits.
   *
   *  See http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt05ch13s03.html
   *  for advice on how to make use of this class for @a unusual character
   *  types. Also, check out include/ext/pod_char_traits.h.
  */
  template<class _CharT>
    struct char_traits : public __gnu_cxx::char_traits<_CharT>
    { };
#pragma empty_line
#pragma empty_line
  /// 21.1.3.1  char_traits specializations
  template<>
    struct char_traits<char>
    {
      typedef char char_type;
      typedef int int_type;
      typedef streampos pos_type;
      typedef streamoff off_type;
      typedef mbstate_t state_type;
#pragma empty_line
      static void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }
#pragma empty_line
      static bool
      eq(const char_type& __c1, const char_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static bool
      lt(const char_type& __c1, const char_type& __c2)
      { return __c1 < __c2; }
#pragma empty_line
      static int
      compare(const char_type* __s1, const char_type* __s2, size_t __n)
      { return __builtin_memcmp(__s1, __s2, __n); }
#pragma empty_line
      static size_t
      length(const char_type* __s)
      { return __builtin_strlen(__s); }
#pragma empty_line
      static const char_type*
      find(const char_type* __s, size_t __n, const char_type& __a)
      { return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n)); }
#pragma empty_line
      static char_type*
      move(char_type* __s1, const char_type* __s2, size_t __n)
      { return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n)); }
#pragma empty_line
      static char_type*
      copy(char_type* __s1, const char_type* __s2, size_t __n)
      { return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n)); }
#pragma empty_line
      static char_type*
      assign(char_type* __s, size_t __n, char_type __a)
      { return static_cast<char_type*>(__builtin_memset(__s, __a, __n)); }
#pragma empty_line
      static char_type
      to_char_type(const int_type& __c)
      { return static_cast<char_type>(__c); }
#pragma empty_line
      // To keep both the byte 0xff and the eof symbol 0xffffffff
      // from ending up as 0xffffffff.
      static int_type
      to_int_type(const char_type& __c)
      { return static_cast<int_type>(static_cast<unsigned char>(__c)); }
#pragma empty_line
      static bool
      eq_int_type(const int_type& __c1, const int_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static int_type
      eof()
      { return static_cast<int_type>(-1); }
#pragma empty_line
      static int_type
      not_eof(const int_type& __c)
      { return (__c == eof()) ? 0 : __c; }
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
  /// 21.1.3.2  char_traits specializations
  template<>
    struct char_traits<wchar_t>
    {
      typedef wchar_t char_type;
      typedef wint_t int_type;
      typedef streamoff off_type;
      typedef wstreampos pos_type;
      typedef mbstate_t state_type;
#pragma empty_line
      static void
      assign(char_type& __c1, const char_type& __c2)
      { __c1 = __c2; }
#pragma empty_line
      static bool
      eq(const char_type& __c1, const char_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static bool
      lt(const char_type& __c1, const char_type& __c2)
      { return __c1 < __c2; }
#pragma empty_line
      static int
      compare(const char_type* __s1, const char_type* __s2, size_t __n)
      { return wmemcmp(__s1, __s2, __n); }
#pragma empty_line
      static size_t
      length(const char_type* __s)
      { return wcslen(__s); }
#pragma empty_line
      static const char_type*
      find(const char_type* __s, size_t __n, const char_type& __a)
      { return wmemchr(__s, __a, __n); }
#pragma empty_line
      static char_type*
      move(char_type* __s1, const char_type* __s2, size_t __n)
      { return wmemmove(__s1, __s2, __n); }
#pragma empty_line
      static char_type*
      copy(char_type* __s1, const char_type* __s2, size_t __n)
      { return wmemcpy(__s1, __s2, __n); }
#pragma empty_line
      static char_type*
      assign(char_type* __s, size_t __n, char_type __a)
      { return wmemset(__s, __a, __n); }
#pragma empty_line
      static char_type
      to_char_type(const int_type& __c)
      { return char_type(__c); }
#pragma empty_line
      static int_type
      to_int_type(const char_type& __c)
      { return int_type(__c); }
#pragma empty_line
      static bool
      eq_int_type(const int_type& __c1, const int_type& __c2)
      { return __c1 == __c2; }
#pragma empty_line
      static int_type
      eof()
      { return static_cast<int_type>((0xffffffffu)); }
#pragma empty_line
      static int_type
      not_eof(const int_type& __c)
      { return eq_int_type(__c, eof()) ? 0 : __c; }
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 1 3
// Allocators -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010,
// 2011 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 * Copyright (c) 1996-1997
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file bits/allocator.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{memory}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Define the base class to std::allocator.
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++allocator.h" 1 3
// Base to std::allocator -*- C++ -*-
#pragma empty_line
// Copyright (C) 2004, 2005, 2009, 2010 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/c++allocator.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{memory}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Define new_allocator as the base class to std::allocator.
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 1 3
// Allocator that wraps operator new -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file ext/new_allocator.h
 *  This file is a GNU extension to the Standard C++ Library.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new" 1 3
// The -*- C++ -*- dynamic memory management header.
#pragma empty_line
// Copyright (C) 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002,
// 2003, 2004, 2005, 2006, 2007, 2009, 2010
// Free Software Foundation
#pragma empty_line
// This file is part of GCC.
//
// GCC is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
// 
// GCC is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file new
 *  This is a Standard C++ Library header.
 *
 *  The header @c new defines several functions to manage dynamic memory and
 *  handling memory allocation errors; see
 *  http://gcc.gnu.org/onlinedocs/libstdc++/18_support/howto.html#4 for more.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 39 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 1 3
// Exception Handling support header for -*- C++ -*-
#pragma empty_line
// Copyright (C) 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003,
// 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011
// Free Software Foundation
//
// This file is part of GCC.
//
// GCC is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// GCC is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file exception
 *  This is a Standard C++ Library header.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 35 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/exception" 3
#pragma empty_line
#pragma GCC visibility push(default)
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C++" {
#pragma empty_line
namespace std
{
  /**
   * @defgroup exceptions Exceptions
   * @ingroup diagnostics
   *
   * Classes and functions for reporting errors via exception classes.
   * @{
   */
#pragma empty_line
  /**
   *  @brief Base class for all library exceptions.
   *
   *  This is the base class for all exceptions thrown by the standard
   *  library, and by certain language expressions.  You are free to derive
   *  your own %exception classes, or use a different hierarchy, or to
   *  throw non-class data (e.g., fundamental types).
   */
  class exception
  {
  public:
    exception() throw() { }
    virtual ~exception() throw();
#pragma empty_line
    /** Returns a C-style character string describing the general cause
     *  of the current error.  */
    virtual const char* what() const throw();
  };
#pragma empty_line
  /** If an %exception is thrown which is not listed in a function's
   *  %exception specification, one of these may be thrown.  */
  class bad_exception : public exception
  {
  public:
    bad_exception() throw() { }
#pragma empty_line
    // This declaration is not useless:
    // http://gcc.gnu.org/onlinedocs/gcc-3.0.2/gcc_6.html#SEC118
    virtual ~bad_exception() throw();
#pragma empty_line
    // See comment in eh_exception.cc.
    virtual const char* what() const throw();
  };
#pragma empty_line
  /// If you write a replacement %terminate handler, it must be of this type.
  typedef void (*terminate_handler) ();
#pragma empty_line
  /// If you write a replacement %unexpected handler, it must be of this type.
  typedef void (*unexpected_handler) ();
#pragma empty_line
  /// Takes a new handler function as an argument, returns the old function.
  terminate_handler set_terminate(terminate_handler) throw();
#pragma empty_line
  /** The runtime will call this function if %exception handling must be
   *  abandoned for any reason.  It can also be called by the user.  */
  void terminate() throw() __attribute__ ((__noreturn__));
#pragma empty_line
  /// Takes a new handler function as an argument, returns the old function.
  unexpected_handler set_unexpected(unexpected_handler) throw();
#pragma empty_line
  /** The runtime will call this function if an %exception is thrown which
   *  violates the function's %exception specification.  */
  void unexpected() __attribute__ ((__noreturn__));
#pragma empty_line
  /** [18.6.4]/1:  'Returns true after completing evaluation of a
   *  throw-expression until either completing initialization of the
   *  exception-declaration in the matching handler or entering @c unexpected()
   *  due to the throw; or after entering @c terminate() for any reason
   *  other than an explicit call to @c terminate().  [Note: This includes
   *  stack unwinding [15.2].  end note]'
   *
   *  2: 'When @c uncaught_exception() is true, throwing an
   *  %exception can result in a call of @c terminate()
   *  (15.5.1).'
   */
  bool uncaught_exception() throw() __attribute__ ((__pure__));
#pragma empty_line
  // @} group exceptions
} // namespace std
#pragma empty_line
namespace __gnu_cxx
{
#pragma empty_line
#pragma empty_line
  /**
   *  @brief A replacement for the standard terminate_handler which
   *  prints more information about the terminating exception (if any)
   *  on stderr.
   *
   *  @ingroup exceptions
   *
   *  Call
   *   @code
   *     std::set_terminate(__gnu_cxx::__verbose_terminate_handler)
   *   @endcode
   *  to use.  For more info, see
   *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt02ch06s02.html
   *
   *  In 3.4 and later, this is on by default.
   */
  void __verbose_terminate_handler();
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
} // extern "C++"
#pragma empty_line
#pragma GCC visibility pop
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new" 2 3
#pragma empty_line
#pragma GCC visibility push(default)
#pragma empty_line
extern "C++" {
#pragma empty_line
namespace std
{
  /**
   *  @brief  Exception possibly thrown by @c new.
   *  @ingroup exceptions
   *
   *  @c bad_alloc (or classes derived from it) is used to report allocation
   *  errors from the throwing forms of @c new.  */
  class bad_alloc : public exception
  {
  public:
    bad_alloc() throw() { }
#pragma empty_line
    // This declaration is not useless:
    // http://gcc.gnu.org/onlinedocs/gcc-3.0.2/gcc_6.html#SEC118
    virtual ~bad_alloc() throw();
#pragma empty_line
    // See comment in eh_exception.cc.
    virtual const char* what() const throw();
  };
#pragma empty_line
  struct nothrow_t { };
#pragma empty_line
  extern const nothrow_t nothrow;
#pragma empty_line
  /** If you write your own error handler to be called by @c new, it must
   *  be of this type.  */
  typedef void (*new_handler)();
#pragma empty_line
  /// Takes a replacement handler as the argument, returns the
  /// previous handler.
  new_handler set_new_handler(new_handler) throw();
} // namespace std
#pragma empty_line
//@{
/** These are replaceable signatures:
 *  - normal single new and delete (no arguments, throw @c bad_alloc on error)
 *  - normal array new and delete (same)
 *  - @c nothrow single new and delete (take a @c nothrow argument, return
 *    @c NULL on error)
 *  - @c nothrow array new and delete (same)
 *
 *  Placement new and delete signatures (take a memory address argument,
 *  does nothing) may not be replaced by a user's program.
*/
void* operator new(std::size_t) throw (std::bad_alloc);
void* operator new[](std::size_t) throw (std::bad_alloc);
void operator delete(void*) throw();
void operator delete[](void*) throw();
void* operator new(std::size_t, const std::nothrow_t&) throw();
void* operator new[](std::size_t, const std::nothrow_t&) throw();
void operator delete(void*, const std::nothrow_t&) throw();
void operator delete[](void*, const std::nothrow_t&) throw();
#pragma empty_line
// Default placement versions of operator new.
inline void* operator new(std::size_t, void* __p) throw() { return __p; }
inline void* operator new[](std::size_t, void* __p) throw() { return __p; }
#pragma empty_line
// Default placement versions of operator delete.
inline void operator delete (void*, void*) throw() { }
inline void operator delete[](void*, void*) throw() { }
//@}
} // extern "C++"
#pragma empty_line
#pragma GCC visibility pop
#pragma line 35 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  using std::size_t;
  using std::ptrdiff_t;
#pragma empty_line
  /**
   *  @brief  An allocator that uses global new, as per [20.4].
   *  @ingroup allocators
   *
   *  This is precisely the allocator defined in the C++ Standard. 
   *    - all allocation calls operator new
   *    - all deallocation calls operator delete
   */
  template<typename _Tp>
    class new_allocator
    {
    public:
      typedef size_t size_type;
      typedef ptrdiff_t difference_type;
      typedef _Tp* pointer;
      typedef const _Tp* const_pointer;
      typedef _Tp& reference;
      typedef const _Tp& const_reference;
      typedef _Tp value_type;
#pragma empty_line
      template<typename _Tp1>
        struct rebind
        { typedef new_allocator<_Tp1> other; };
#pragma empty_line
      new_allocator() throw() { }
#pragma empty_line
      new_allocator(const new_allocator&) throw() { }
#pragma empty_line
      template<typename _Tp1>
        new_allocator(const new_allocator<_Tp1>&) throw() { }
#pragma empty_line
      ~new_allocator() throw() { }
#pragma empty_line
      pointer
      address(reference __x) const { return std::__addressof(__x); }
#pragma empty_line
      const_pointer
      address(const_reference __x) const { return std::__addressof(__x); }
#pragma empty_line
      // NB: __n is permitted to be 0.  The C++ standard says nothing
      // about what the return value is when __n == 0.
      pointer
      allocate(size_type __n, const void* = 0)
      {
 if (__n > this->max_size())
   std::__throw_bad_alloc();
#pragma empty_line
 return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
      }
#pragma empty_line
      // __p is not permitted to be a null pointer.
      void
      deallocate(pointer __p, size_type)
      { ::operator delete(__p); }
#pragma empty_line
      size_type
      max_size() const throw()
      { return size_t(-1) / sizeof(_Tp); }
#pragma empty_line
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 402. wrong new expression in [some_] allocator::construct
      void
      construct(pointer __p, const _Tp& __val)
      { ::new((void *)__p) _Tp(__val); }
#pragma line 117 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/new_allocator.h" 3
      void
      destroy(pointer __p) { __p->~_Tp(); }
    };
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator==(const new_allocator<_Tp>&, const new_allocator<_Tp>&)
    { return true; }
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator!=(const new_allocator<_Tp>&, const new_allocator<_Tp>&)
    { return false; }
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 35 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++allocator.h" 2 3
#pragma line 49 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /**
   * @defgroup allocators Allocators
   * @ingroup memory
   *
   * Classes encapsulating memory operations.
   */
#pragma empty_line
  template<typename _Tp>
    class allocator;
#pragma empty_line
  /// allocator<void> specialization.
  template<>
    class allocator<void>
    {
    public:
      typedef size_t size_type;
      typedef ptrdiff_t difference_type;
      typedef void* pointer;
      typedef const void* const_pointer;
      typedef void value_type;
#pragma empty_line
      template<typename _Tp1>
        struct rebind
        { typedef allocator<_Tp1> other; };
    };
#pragma empty_line
  /**
   * @brief  The @a standard allocator, as per [20.4].
   * @ingroup allocators
   *
   *  Further details:
   *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt04ch11.html
   */
  template<typename _Tp>
    class allocator: public __gnu_cxx::new_allocator<_Tp>
    {
   public:
      typedef size_t size_type;
      typedef ptrdiff_t difference_type;
      typedef _Tp* pointer;
      typedef const _Tp* const_pointer;
      typedef _Tp& reference;
      typedef const _Tp& const_reference;
      typedef _Tp value_type;
#pragma empty_line
      template<typename _Tp1>
        struct rebind
        { typedef allocator<_Tp1> other; };
#pragma empty_line
      allocator() throw() { }
#pragma empty_line
      allocator(const allocator& __a) throw()
      : __gnu_cxx::new_allocator<_Tp>(__a) { }
#pragma empty_line
      template<typename _Tp1>
        allocator(const allocator<_Tp1>&) throw() { }
#pragma empty_line
      ~allocator() throw() { }
#pragma empty_line
      // Inherit everything else.
    };
#pragma empty_line
  template<typename _T1, typename _T2>
    inline bool
    operator==(const allocator<_T1>&, const allocator<_T2>&)
    { return true; }
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator==(const allocator<_Tp>&, const allocator<_Tp>&)
    { return true; }
#pragma empty_line
  template<typename _T1, typename _T2>
    inline bool
    operator!=(const allocator<_T1>&, const allocator<_T2>&)
    { return false; }
#pragma empty_line
  template<typename _Tp>
    inline bool
    operator!=(const allocator<_Tp>&, const allocator<_Tp>&)
    { return false; }
#pragma empty_line
  // Inhibit implicit instantiations for required instantiations,
  // which are defined via explicit instantiations elsewhere.
#pragma empty_line
  extern template class allocator<char>;
  extern template class allocator<wchar_t>;
#pragma empty_line
#pragma empty_line
  // Undefine.
#pragma empty_line
#pragma empty_line
  // To implement Option 3 of DR 431.
  template<typename _Alloc, bool = __is_empty(_Alloc)>
    struct __alloc_swap
    { static void _S_do_it(_Alloc&, _Alloc&) { } };
#pragma empty_line
  template<typename _Alloc>
    struct __alloc_swap<_Alloc, false>
    {
      static void
      _S_do_it(_Alloc& __one, _Alloc& __two)
      {
 // Precondition: swappable allocators.
 if (__one != __two)
   swap(__one, __two);
      }
    };
#pragma empty_line
  // Optimize for stateless allocators.
  template<typename _Alloc, bool = __is_empty(_Alloc)>
    struct __alloc_neq
    {
      static bool
      _S_do_it(const _Alloc&, const _Alloc&)
      { return false; }
    };
#pragma empty_line
  template<typename _Alloc>
    struct __alloc_neq<_Alloc, false>
    {
      static bool
      _S_do_it(const _Alloc& __one, const _Alloc& __two)
      { return __one != __two; }
    };
#pragma line 237 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/allocator.h" 3
} // namespace std
#pragma line 43 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 1 3
// Locale support -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/localefwd.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{locale}
 */
#pragma empty_line
//
// ISO C++ 14882: 22.1  Locales
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 39 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 1 3
// Wrapper for underlying C-language localization -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/c++locale.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{locale}
 */
#pragma empty_line
//
// ISO C++ 14882: 22.8  Standard locale categories.
//
#pragma empty_line
// Written by Benjamin Kosnik <bkoz@redhat.com>
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 40 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 1 3
// -*- C++ -*- forwarding header.
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file clocale
 *  This is a Standard C++ Library file.  You should @c \#include this file
 *  in your programs, rather than any of the @a *.h implementation files.
 *
 *  This is the C++ version of the Standard C Library header @c locale.h,
 *  and its contents are (mostly) the same as that header, but are all
 *  contained in the namespace @c std (except for names which are defined
 *  as macros in C).
 */
#pragma empty_line
//
// ISO C++ 14882: 18.2.2  Implementation properties: C library
//
#pragma empty_line
#pragma empty_line
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/locale.h" 1 3 4
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	ISO C99 Standard: 7.11 Localization	<locale.h>
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#pragma line 56 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma line 29 "/usr/include/locale.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/locale.h" 1 3 4
/* Definition of locale category symbol values.
   Copyright (C) 2001-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma line 30 "/usr/include/locale.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma empty_line
/* These are the possibilities for the first argument to setlocale.
   The code assumes that the lowest LC_* symbol has the value zero.  */
#pragma line 52 "/usr/include/locale.h" 3 4
/* Structure giving information about numeric and monetary notation.  */
struct lconv
{
  /* Numeric (non-monetary) information.  */
#pragma empty_line
  char *decimal_point; /* Decimal point character.  */
  char *thousands_sep; /* Thousands separator.  */
  /* Each element is the number of digits in each group;
     elements with higher indices are farther left.
     An element with value CHAR_MAX means that no further grouping is done.
     An element with value 0 means that the previous element is used
     for all groups farther left.  */
  char *grouping;
#pragma empty_line
  /* Monetary information.  */
#pragma empty_line
  /* First three chars are a currency symbol from ISO 4217.
     Fourth char is the separator.  Fifth char is '\0'.  */
  char *int_curr_symbol;
  char *currency_symbol; /* Local currency symbol.  */
  char *mon_decimal_point; /* Decimal point character.  */
  char *mon_thousands_sep; /* Thousands separator.  */
  char *mon_grouping; /* Like `grouping' element (above).  */
  char *positive_sign; /* Sign for positive values.  */
  char *negative_sign; /* Sign for negative values.  */
  char int_frac_digits; /* Int'l fractional digits.  */
  char frac_digits; /* Local fractional digits.  */
  /* 1 if currency_symbol precedes a positive value, 0 if succeeds.  */
  char p_cs_precedes;
  /* 1 iff a space separates currency_symbol from a positive value.  */
  char p_sep_by_space;
  /* 1 if currency_symbol precedes a negative value, 0 if succeeds.  */
  char n_cs_precedes;
  /* 1 iff a space separates currency_symbol from a negative value.  */
  char n_sep_by_space;
  /* Positive and negative sign positions:
     0 Parentheses surround the quantity and currency_symbol.
     1 The sign string precedes the quantity and currency_symbol.
     2 The sign string follows the quantity and currency_symbol.
     3 The sign string immediately precedes the currency_symbol.
     4 The sign string immediately follows the currency_symbol.  */
  char p_sign_posn;
  char n_sign_posn;
#pragma empty_line
  /* 1 if int_curr_symbol precedes a positive value, 0 if succeeds.  */
  char int_p_cs_precedes;
  /* 1 iff a space separates int_curr_symbol from a positive value.  */
  char int_p_sep_by_space;
  /* 1 if int_curr_symbol precedes a negative value, 0 if succeeds.  */
  char int_n_cs_precedes;
  /* 1 iff a space separates int_curr_symbol from a negative value.  */
  char int_n_sep_by_space;
  /* Positive and negative sign positions:
     0 Parentheses surround the quantity and int_curr_symbol.
     1 The sign string precedes the quantity and int_curr_symbol.
     2 The sign string follows the quantity and int_curr_symbol.
     3 The sign string immediately precedes the int_curr_symbol.
     4 The sign string immediately follows the int_curr_symbol.  */
  char int_p_sign_posn;
  char int_n_sign_posn;
#pragma line 120 "/usr/include/locale.h" 3 4
};
#pragma empty_line
#pragma empty_line
/* Set and/or return the current locale.  */
extern char *setlocale (int __category, const char *__locale) throw ();
#pragma empty_line
/* Return the numeric/monetary information for the current locale.  */
extern struct lconv *localeconv (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The concept of one static locale per category is not very well
   thought out.  Many applications will need to process its data using
   information from several different locales.  Another application is
   the implementation of the internationalization handling in the
   upcoming ISO C++ standard library.  To support this another set of
   the functions using locale data exist which have an additional
   argument.
#pragma empty_line
   Attention: all these functions are *not* standardized in any form.
   This is a proof-of-concept implementation.  */
#pragma empty_line
/* Get locale datatype definition.  */
#pragma empty_line
#pragma empty_line
/* Return a reference to a data structure representing a set of locale
   datasets.  Unlike for the CATEGORY parameter for `setlocale' the
   CATEGORY_MASK parameter here uses a single bit for each category,
   made by OR'ing together LC_*_MASK bits above.  */
extern __locale_t newlocale (int __category_mask, const char *__locale,
        __locale_t __base) throw ();
#pragma empty_line
/* These are the bits that can be set in the CATEGORY_MASK argument to
   `newlocale'.  In the GNU implementation, LC_FOO_MASK has the value
   of (1 << LC_FOO), but this is not a part of the interface that
   callers can assume will be true.  */
#pragma line 184 "/usr/include/locale.h" 3 4
/* Return a duplicate of the set of locale in DATASET.  All usage
   counters are increased if necessary.  */
extern __locale_t duplocale (__locale_t __dataset) throw ();
#pragma empty_line
/* Free the data associated with a locale dataset previously returned
   by a call to `setlocale_r'.  */
extern void freelocale (__locale_t __dataset) throw ();
#pragma empty_line
/* Switch the current thread's locale to DATASET.
   If DATASET is null, instead just return the current setting.
   The special value LC_GLOBAL_LOCALE is the initial setting
   for all threads and can also be installed any time, meaning
   the thread uses the global settings controlled by `setlocale'.  */
extern __locale_t uselocale (__locale_t __dataset) throw ();
#pragma empty_line
/* This value can be passed to `uselocale' and may be returned by it.
   Passing this value to any other function has undefined behavior.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 44 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/clocale" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Get rid of those macros defined in <locale.h> in lieu of real functions.
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std
{
  using ::lconv;
  using ::setlocale;
  using ::localeconv;
} // namespace std
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  extern "C" __typeof(uselocale) __uselocale;
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  typedef __locale_t __c_locale;
#pragma empty_line
  // Convert numeric value of type double and long double to string and
  // return length of string.  If vsnprintf is available use it, otherwise
  // fall back to the unsafe vsprintf which, in general, can be dangerous
  // and should be avoided.
  inline int
  __convert_from_v(const __c_locale& __cloc __attribute__ ((__unused__)),
     char* __out,
     const int __size __attribute__ ((__unused__)),
     const char* __fmt, ...)
  {
#pragma empty_line
    __c_locale __old = __gnu_cxx::__uselocale(__cloc);
#pragma line 88 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/c++locale.h" 3
    __builtin_va_list __args;
    __builtin_va_start(__args, __fmt);
#pragma empty_line
#pragma empty_line
    const int __ret = __builtin_vsnprintf(__out, __size, __fmt, __args);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    __builtin_va_end(__args);
#pragma empty_line
#pragma empty_line
    __gnu_cxx::__uselocale(__old);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
    return __ret;
  }
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 1 3
// Forwarding declarations -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file include/iosfwd
 *  This is a Standard C++ Library header.
 */
#pragma empty_line
//
// ISO C++ 14882: 27.2  Forward declarations
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 38 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/iosfwd" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /**
   *  @defgroup io I/O
   *
   *  Nearly all of the I/O classes are parameterized on the type of
   *  characters they read and write.  (The major exception is ios_base at
   *  the top of the hierarchy.)  This is a change from pre-Standard
   *  streams, which were not templates.
   *
   *  For ease of use and compatibility, all of the basic_* I/O-related
   *  classes are given typedef names for both of the builtin character
   *  widths (wide and narrow).  The typedefs are the same as the
   *  pre-Standard names, for example:
   *
   *  @code
   *     typedef basic_ifstream<char>  ifstream;
   *  @endcode
   *
   *  Because properly forward-declaring these classes can be difficult, you
   *  should not do it yourself.  Instead, include the &lt;iosfwd&gt;
   *  header, which contains only declarations of all the I/O classes as
   *  well as the typedefs.  Trying to forward-declare the typedefs
   *  themselves (e.g., <code>class ostream;</code>) is not valid ISO C++.
   *
   *  For more specific declarations, see
   *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/bk01pt11ch24.html
   *
   *  @{
  */
  class ios_base;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ios;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_streambuf;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_istream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ostream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_iostream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
     typename _Alloc = allocator<_CharT> >
    class basic_stringbuf;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
    typename _Alloc = allocator<_CharT> >
    class basic_istringstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
    typename _Alloc = allocator<_CharT> >
    class basic_ostringstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT>,
    typename _Alloc = allocator<_CharT> >
    class basic_stringstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_filebuf;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ifstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_ofstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class basic_fstream;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class istreambuf_iterator;
#pragma empty_line
  template<typename _CharT, typename _Traits = char_traits<_CharT> >
    class ostreambuf_iterator;
#pragma empty_line
#pragma empty_line
  /// Base class for @c char streams.
  typedef basic_ios<char> ios;
#pragma empty_line
  /// Base class for @c char buffers.
  typedef basic_streambuf<char> streambuf;
#pragma empty_line
  /// Base class for @c char input streams.
  typedef basic_istream<char> istream;
#pragma empty_line
  /// Base class for @c char output streams.
  typedef basic_ostream<char> ostream;
#pragma empty_line
  /// Base class for @c char mixed input and output streams.
  typedef basic_iostream<char> iostream;
#pragma empty_line
  /// Class for @c char memory buffers.
  typedef basic_stringbuf<char> stringbuf;
#pragma empty_line
  /// Class for @c char input memory streams.
  typedef basic_istringstream<char> istringstream;
#pragma empty_line
  /// Class for @c char output memory streams.
  typedef basic_ostringstream<char> ostringstream;
#pragma empty_line
  /// Class for @c char mixed input and output memory streams.
  typedef basic_stringstream<char> stringstream;
#pragma empty_line
  /// Class for @c char file buffers.
  typedef basic_filebuf<char> filebuf;
#pragma empty_line
  /// Class for @c char input file streams.
  typedef basic_ifstream<char> ifstream;
#pragma empty_line
  /// Class for @c char output file streams.
  typedef basic_ofstream<char> ofstream;
#pragma empty_line
  /// Class for @c char mixed input and output file streams.
  typedef basic_fstream<char> fstream;
#pragma empty_line
#pragma empty_line
  /// Base class for @c wchar_t streams.
  typedef basic_ios<wchar_t> wios;
#pragma empty_line
  /// Base class for @c wchar_t buffers.
  typedef basic_streambuf<wchar_t> wstreambuf;
#pragma empty_line
  /// Base class for @c wchar_t input streams.
  typedef basic_istream<wchar_t> wistream;
#pragma empty_line
  /// Base class for @c wchar_t output streams.
  typedef basic_ostream<wchar_t> wostream;
#pragma empty_line
  /// Base class for @c wchar_t mixed input and output streams.
  typedef basic_iostream<wchar_t> wiostream;
#pragma empty_line
  /// Class for @c wchar_t memory buffers.
  typedef basic_stringbuf<wchar_t> wstringbuf;
#pragma empty_line
  /// Class for @c wchar_t input memory streams.
  typedef basic_istringstream<wchar_t> wistringstream;
#pragma empty_line
  /// Class for @c wchar_t output memory streams.
  typedef basic_ostringstream<wchar_t> wostringstream;
#pragma empty_line
  /// Class for @c wchar_t mixed input and output memory streams.
  typedef basic_stringstream<wchar_t> wstringstream;
#pragma empty_line
  /// Class for @c wchar_t file buffers.
  typedef basic_filebuf<wchar_t> wfilebuf;
#pragma empty_line
  /// Class for @c wchar_t input file streams.
  typedef basic_ifstream<wchar_t> wifstream;
#pragma empty_line
  /// Class for @c wchar_t output file streams.
  typedef basic_ofstream<wchar_t> wofstream;
#pragma empty_line
  /// Class for @c wchar_t mixed input and output file streams.
  typedef basic_fstream<wchar_t> wfstream;
#pragma empty_line
  /** @}  */
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 43 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 1 3
// -*- C++ -*- forwarding header.
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file include/cctype
 *  This is a Standard C++ Library file.  You should @c \#include this file
 *  in your programs, rather than any of the @a *.h implementation files.
 *
 *  This is the C++ version of the Standard C Library header @c ctype.h,
 *  and its contents are (mostly) the same as that header, but are all
 *  contained in the namespace @c std (except for names which are defined
 *  as macros in C).
 */
#pragma empty_line
//
// ISO C++ 14882: <ccytpe>
//
#pragma empty_line
#pragma empty_line
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/ctype.h" 1 3 4
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	ISO C99 Standard 7.4: Character handling	<ctype.h>
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
/* bits/types.h -- definitions of __*_t types underlying *_t types.
   Copyright (C) 2002-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 * Never include this file directly; use <sys/types.h> instead.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
#pragma empty_line
/* Convenience types.  */
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
#pragma empty_line
/* Fixed-size types, underlying types depend on word size and compiler.  */
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
#pragma empty_line
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* quad_t is also 64 bits.  */
#pragma empty_line
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The machine-dependent file <bits/typesizes.h> defines __*_T_TYPE
   macros for each of the OS types we define below.  The definitions
   of those macros must use the following macros for underlying types.
   We define __S<SIZE>_TYPE and __U<SIZE>_TYPE for the signed and unsigned
   variants of each of the following integer types on this machine.
#pragma empty_line
	16		-- "natural" 16-bit type (always short)
	32		-- "natural" 32-bit type (always int)
	64		-- "natural" 64-bit type (long or long long)
	LONG32		-- 32-bit type, traditionally long
	QUAD		-- 64-bit type, always long long
	WORD		-- natural type of __WORDSIZE bits (int or long)
	LONGWORD	-- type of __WORDSIZE bits, traditionally long
#pragma empty_line
   We distinguish WORD/LONGWORD, 32/LONG32, and 64/QUAD so that the
   conventional uses of `long' or `long long' type modifiers match the
   types we define, even when a less-adorned type would be the same size.
   This matters for (somewhat) portably writing printf/scanf formats for
   these types, where using the appropriate l or ll format modifiers can
   make the typedefs and the formats match up across all GNU platforms.  If
   we used `long' when it's 64 bits where `long long' is expected, then the
   compiler would warn about the formats not matching the argument types,
   and the programmer changing them to shut up the compiler would break the
   program's portability.
#pragma empty_line
   Here we assume what is presently the case in all the GCC configurations
   we support: long long is always 64 bits, long is always word/address size,
   and int is always 32 bits.  */
#pragma line 116 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
/* No need to mark the typedef with __extension__.   */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
/* bits/typesizes.h -- underlying types for *_t.  Linux/x86-64 version.
   Copyright (C) 2012-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma line 26 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 3 4
/* See <bits/types.h> for the meaning of these macros.  This file exists so
   that <bits/types.h> need not vary across different GNU platforms.  */
#pragma empty_line
/* X32 kernel interface is 64-bit.  */
#pragma line 76 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 3 4
/* Tell the libc code that off_t and off64_t are actually the same type
   for all ABI purposes, even if possibly expressed as different base types
   for C type-checking purposes.  */
#pragma empty_line
#pragma empty_line
/* Same for ino_t and ino64_t.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Number of descriptors that can fit in an `fd_set'.  */
#pragma line 122 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
#pragma empty_line
#pragma empty_line
typedef unsigned long int __dev_t; /* Type of device numbers.  */
typedef unsigned int __uid_t; /* Type of user identifications.  */
typedef unsigned int __gid_t; /* Type of group identifications.  */
typedef unsigned long int __ino_t; /* Type of file serial numbers.  */
typedef unsigned long int __ino64_t; /* Type of file serial numbers (LFS).*/
typedef unsigned int __mode_t; /* Type of file attribute bitmasks.  */
typedef unsigned long int __nlink_t; /* Type of file link counts.  */
typedef long int __off_t; /* Type of file sizes and offsets.  */
typedef long int __off64_t; /* Type of file sizes and offsets (LFS).  */
typedef int __pid_t; /* Type of process identifications.  */
typedef struct { int __val[2]; } __fsid_t; /* Type of file system IDs.  */
typedef long int __clock_t; /* Type of CPU usage counts.  */
typedef unsigned long int __rlim_t; /* Type for resource measurement.  */
typedef unsigned long int __rlim64_t; /* Type for resource measurement (LFS).  */
typedef unsigned int __id_t; /* General type for IDs.  */
typedef long int __time_t; /* Seconds since the Epoch.  */
typedef unsigned int __useconds_t; /* Count of microseconds.  */
typedef long int __suseconds_t; /* Signed count of microseconds.  */
#pragma empty_line
typedef int __daddr_t; /* The type of a disk address.  */
typedef int __key_t; /* Type of an IPC key.  */
#pragma empty_line
/* Clock ID used in clock and timer functions.  */
typedef int __clockid_t;
#pragma empty_line
/* Timer ID returned by `timer_create'.  */
typedef void * __timer_t;
#pragma empty_line
/* Type to represent block size.  */
typedef long int __blksize_t;
#pragma empty_line
/* Types from the Large File Support interface.  */
#pragma empty_line
/* Type to count number of disk blocks.  */
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
#pragma empty_line
/* Type to count file system blocks.  */
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
#pragma empty_line
/* Type to count file system nodes.  */
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
#pragma empty_line
/* Type of miscellaneous file system fields.  */
typedef long int __fsword_t;
#pragma empty_line
typedef long int __ssize_t; /* Type of a byte count, or error.  */
#pragma empty_line
/* Signed long type used in system calls.  */
typedef long int __syscall_slong_t;
/* Unsigned long type used in system calls.  */
typedef unsigned long int __syscall_ulong_t;
#pragma empty_line
/* These few don't really vary by system, they always correspond
   to one of the other defined types.  */
typedef __off64_t __loff_t; /* Type of file sizes and offsets (LFS).  */
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;
#pragma empty_line
/* Duplicates info from stdint.h but this is used in unistd.h.  */
typedef long int __intptr_t;
#pragma empty_line
/* Duplicate info from sys/socket.h.  */
typedef unsigned int __socklen_t;
#pragma line 27 "/usr/include/ctype.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
/* These are all the characteristics of characters.
   If there get to be more than 16 distinct characteristics,
   many things must be changed that use `unsigned short int's.
#pragma empty_line
   The characteristics are stored always in network byte order (big
   endian).  We define the bit value interpretations here dependent on the
   machine's byte order.  */
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/endian.h" 1 3 4
/* Copyright (C) 1992-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Definitions for byte order, according to significance of bytes,
   from low addresses to high addresses.  The value is what you get by
   putting '4' in the most significant byte, '3' in the second most
   significant byte, '2' in the second least significant byte, and '1'
   in the least significant byte, and then writing down one digit for
   each byte, starting with the byte at the lowest address at the left,
   and proceeding to the byte with the highest address at the right.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* This file defines `__BYTE_ORDER' for the particular machine.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
/* i386/x86_64 are little-endian.  */
#pragma line 37 "/usr/include/endian.h" 2 3 4
#pragma empty_line
/* Some machines may need to use a different endianness for floating point
   values.  */
#pragma line 59 "/usr/include/endian.h" 3 4
/* Conversion interfaces.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
/* Macros to swap the order of bytes in integer values.
   Copyright (C) 1997-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma line 28 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 29 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
#pragma empty_line
/* Swap bytes in 16 bit value.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get __bswap_16.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/byteswap-16.h" 1 3 4
/* Macros to swap the order of bytes in 16-bit integer values.
   Copyright (C) 2012-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma line 36 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 2 3 4
#pragma empty_line
/* Swap bytes in 32 bit value.  */
#pragma line 56 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
/* To swap the bytes in a word the i486 processors and up provide the
   `bswap' opcode.  On i386 we have to use three instructions.  */
#pragma line 96 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
/* Swap bytes in 64 bit value.  */
#pragma line 61 "/usr/include/endian.h" 2 3 4
#pragma line 40 "/usr/include/ctype.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)), /* UPPERCASE.  */
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)), /* lowercase.  */
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)), /* Alphabetic.  */
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)), /* Numeric.  */
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)), /* Hexadecimal numeric.  */
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)), /* Whitespace.  */
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)), /* Printing.  */
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)), /* Graphical.  */
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)), /* Blank (usually SPC and TAB).  */
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)), /* Control character.  */
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)), /* Punctuation.  */
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8)) /* Alphanumeric.  */
};
#pragma empty_line
#pragma empty_line
/* These are defined in ctype-info.c.
   The declarations here must match those in localeinfo.h.
#pragma empty_line
   In the thread-specific locale model (see `uselocale' in <locale.h>)
   we cannot use global variables for these as was done in the past.
   Instead, the following accessor functions return the address of
   each variable, which is local to the current thread if multithreaded.
#pragma empty_line
   These point into arrays of 384, so they can be indexed by any `unsigned
   char' value [0,255]; by EOF (-1); or by any `signed char' value
   [-128,-1).  ISO C requires that the ctype functions work for `unsigned
   char' values and for EOF; we also support negative `signed char' values
   for broken old programs.  The case conversion arrays are of `int's
   rather than `unsigned char's because tolower (EOF) must be EOF, which
   doesn't fit into an `unsigned char'.  But today more important is that
   the arrays are also used for multi-byte character sets.  */
extern const unsigned short int **__ctype_b_loc (void)
     throw () __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     throw () __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     throw () __attribute__ ((__const__));
#pragma line 106 "/usr/include/ctype.h" 3 4
/* The following names are all functions:
     int isCHARACTERISTIC(int c);
   which return nonzero iff C has CHARACTERISTIC.
   For the meaning of the characteristic names, see the `enum' above.  */
extern int isalnum (int) throw ();
extern int isalpha (int) throw ();
extern int iscntrl (int) throw ();
extern int isdigit (int) throw ();
extern int islower (int) throw ();
extern int isgraph (int) throw ();
extern int isprint (int) throw ();
extern int ispunct (int) throw ();
extern int isspace (int) throw ();
extern int isupper (int) throw ();
extern int isxdigit (int) throw ();
#pragma empty_line
#pragma empty_line
/* Return the lowercase version of C.  */
extern int tolower (int __c) throw ();
#pragma empty_line
/* Return the uppercase version of C.  */
extern int toupper (int __c) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* ISO C99 introduced one new function.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int isblank (int) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Test C for a set of character classes according to MASK.  */
extern int isctype (int __c, int __mask) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return nonzero iff C is in the ASCII set
   (i.e., is no more than 7 bits wide).  */
extern int isascii (int __c) throw ();
#pragma empty_line
/* Return the part of C that is in the ASCII set
   (i.e., the low-order 7 bits of C).  */
extern int toascii (int __c) throw ();
#pragma empty_line
/* These are the same as `toupper' and `tolower' except that they do not
   check the argument for being in the range of a `char'.  */
extern int _toupper (int) throw ();
extern int _tolower (int) throw ();
#pragma empty_line
#pragma empty_line
/* This code is needed for the optimized mapping functions.  */
#pragma line 244 "/usr/include/ctype.h" 3 4
/* The concept of one static locale per category is not very well
   thought out.  Many applications will need to process its data using
   information from several different locales.  Another application is
   the implementation of the internationalization handling in the
   upcoming ISO C++ standard library.  To support this another set of
   the functions using locale data exist which have an additional
   argument.
#pragma empty_line
   Attention: all these functions are *not* standardized in any form.
   This is a proof-of-concept implementation.  */
#pragma empty_line
/* Structure for reentrant locale using functions.  This is an
   (almost) opaque type for the user level programs.  */
#pragma empty_line
#pragma empty_line
/* These definitions are similar to the ones above but all functions
   take as an argument a handle for the locale which shall be used.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The following names are all functions:
     int isCHARACTERISTIC(int c, locale_t *locale);
   which return nonzero iff C has CHARACTERISTIC.
   For the meaning of the characteristic names, see the `enum' above.  */
extern int isalnum_l (int, __locale_t) throw ();
extern int isalpha_l (int, __locale_t) throw ();
extern int iscntrl_l (int, __locale_t) throw ();
extern int isdigit_l (int, __locale_t) throw ();
extern int islower_l (int, __locale_t) throw ();
extern int isgraph_l (int, __locale_t) throw ();
extern int isprint_l (int, __locale_t) throw ();
extern int ispunct_l (int, __locale_t) throw ();
extern int isspace_l (int, __locale_t) throw ();
extern int isupper_l (int, __locale_t) throw ();
extern int isxdigit_l (int, __locale_t) throw ();
#pragma empty_line
extern int isblank_l (int, __locale_t) throw ();
#pragma empty_line
#pragma empty_line
/* Return the lowercase version of C in locale L.  */
extern int __tolower_l (int __c, __locale_t __l) throw ();
extern int tolower_l (int __c, __locale_t __l) throw ();
#pragma empty_line
/* Return the uppercase version of C.  */
extern int __toupper_l (int __c, __locale_t __l) throw ();
extern int toupper_l (int __c, __locale_t __l) throw ();
#pragma line 347 "/usr/include/ctype.h" 3 4
}
#pragma line 44 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
// Get rid of those macros defined in <ctype.h> in lieu of real functions.
#pragma line 63 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/cctype" 3
namespace std
{
  using ::isalnum;
  using ::isalpha;
  using ::iscntrl;
  using ::isdigit;
  using ::isgraph;
  using ::islower;
  using ::isprint;
  using ::ispunct;
  using ::isspace;
  using ::isupper;
  using ::isxdigit;
  using ::tolower;
  using ::toupper;
} // namespace std
#pragma line 44 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/localefwd.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /** 
   *  @defgroup locales Locales
   *
   *  Classes and functions for internationalization and localization.
   */
#pragma empty_line
  // 22.1.1 Locale
  class locale;
#pragma empty_line
  template<typename _Facet>
    bool
    has_facet(const locale&) throw();
#pragma empty_line
  template<typename _Facet>
    const _Facet&
    use_facet(const locale&);
#pragma empty_line
  // 22.1.3 Convenience interfaces
  template<typename _CharT>
    bool
    isspace(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isprint(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    iscntrl(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isupper(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    islower(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isalpha(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isdigit(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    ispunct(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isxdigit(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isalnum(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    bool
    isgraph(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    _CharT
    toupper(_CharT, const locale&);
#pragma empty_line
  template<typename _CharT>
    _CharT
    tolower(_CharT, const locale&);
#pragma empty_line
  // 22.2.1 and 22.2.1.3 ctype
  class ctype_base;
  template<typename _CharT>
    class ctype;
  template<> class ctype<char>;
#pragma empty_line
  template<> class ctype<wchar_t>;
#pragma empty_line
  template<typename _CharT>
    class ctype_byname;
  // NB: Specialized for char and wchar_t in locale_facets.h.
#pragma empty_line
  class codecvt_base;
  template<typename _InternT, typename _ExternT, typename _StateT>
    class codecvt;
  template<> class codecvt<char, char, mbstate_t>;
#pragma empty_line
  template<> class codecvt<wchar_t, char, mbstate_t>;
#pragma empty_line
  template<typename _InternT, typename _ExternT, typename _StateT>
    class codecvt_byname;
#pragma empty_line
  // 22.2.2 and 22.2.3 numeric
#pragma empty_line
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class num_get;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class num_put;
#pragma empty_line
  template<typename _CharT> class numpunct;
  template<typename _CharT> class numpunct_byname;
#pragma empty_line
  // 22.2.4 collation
  template<typename _CharT>
    class collate;
  template<typename _CharT> class
    collate_byname;
#pragma empty_line
  // 22.2.5 date and time
  class time_base;
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class time_get;
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class time_get_byname;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class time_put;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class time_put_byname;
#pragma empty_line
  // 22.2.6 money
  class money_base;
#pragma empty_line
  template<typename _CharT, typename _InIter = istreambuf_iterator<_CharT> >
    class money_get;
  template<typename _CharT, typename _OutIter = ostreambuf_iterator<_CharT> >
    class money_put;
#pragma empty_line
  template<typename _CharT, bool _Intl = false>
    class moneypunct;
  template<typename _CharT, bool _Intl = false>
    class moneypunct_byname;
#pragma empty_line
  // 22.2.7 message retrieval
  class messages_base;
  template<typename _CharT>
    class messages;
  template<typename _CharT>
    class messages_byname;
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 45 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream_insert.h" 1 3
// Helpers for ostream inserters -*- C++ -*-
#pragma empty_line
// Copyright (C) 2007, 2008, 2009, 2010, 2011 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/ostream_insert.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{ostream}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 33 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream_insert.h" 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cxxabi_forced.h" 1 3
// cxxabi.h subset for cancellation -*- C++ -*-
#pragma empty_line
// Copyright (C) 2007, 2009, 2010, 2011 Free Software Foundation, Inc.
//
// This file is part of GCC.
//
// GCC is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
// 
// GCC is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/cxxabi_forced.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{cxxabi.h}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 34 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/cxxabi_forced.h" 3
#pragma empty_line
#pragma GCC visibility push(default)
#pragma empty_line
#pragma empty_line
namespace __cxxabiv1
{
  /** 
   *  @brief Thrown as part of forced unwinding.
   *  @ingroup exceptions
   *
   *  A magic placeholder class that can be caught by reference to
   *  recognize forced unwinding.
   */
  class __forced_unwind
  {
    virtual ~__forced_unwind() throw();
#pragma empty_line
    // Prevent catch by value.
    virtual void __pure_dummy() = 0;
  };
}
#pragma empty_line
#pragma empty_line
#pragma GCC visibility pop
#pragma line 36 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/ostream_insert.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline void
    __ostream_write(basic_ostream<_CharT, _Traits>& __out,
      const _CharT* __s, streamsize __n)
    {
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
      typedef typename __ostream_type::ios_base __ios_base;
#pragma empty_line
      const streamsize __put = __out.rdbuf()->sputn(__s, __n);
      if (__put != __n)
 __out.setstate(__ios_base::badbit);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    inline void
    __ostream_fill(basic_ostream<_CharT, _Traits>& __out, streamsize __n)
    {
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
      typedef typename __ostream_type::ios_base __ios_base;
#pragma empty_line
      const _CharT __c = __out.fill();
      for (; __n > 0; --__n)
 {
   const typename _Traits::int_type __put = __out.rdbuf()->sputc(__c);
   if (_Traits::eq_int_type(__put, _Traits::eof()))
     {
       __out.setstate(__ios_base::badbit);
       break;
     }
 }
    }
#pragma empty_line
  template<typename _CharT, typename _Traits>
    basic_ostream<_CharT, _Traits>&
    __ostream_insert(basic_ostream<_CharT, _Traits>& __out,
       const _CharT* __s, streamsize __n)
    {
      typedef basic_ostream<_CharT, _Traits> __ostream_type;
      typedef typename __ostream_type::ios_base __ios_base;
#pragma empty_line
      typename __ostream_type::sentry __cerb(__out);
      if (__cerb)
 {
   if (true)
     {
       const streamsize __w = __out.width();
       if (__w > __n)
  {
    const bool __left = ((__out.flags()
     & __ios_base::adjustfield)
           == __ios_base::left);
    if (!__left)
      __ostream_fill(__out, __w - __n);
    if (__out.good())
      __ostream_write(__out, __s, __n);
    if (__left && __out.good())
      __ostream_fill(__out, __w - __n);
  }
       else
  __ostream_write(__out, __s, __n);
       __out.width(0);
     }
   if (false)
     {
       __out._M_setstate(__ios_base::badbit);
                              ;
     }
   if (false)
     { __out._M_setstate(__ios_base::badbit); }
 }
      return __out;
    }
#pragma empty_line
  // Inhibit implicit instantiations for required instantiations,
  // which are defined via explicit instantiations elsewhere.
#pragma empty_line
  extern template ostream& __ostream_insert(ostream&, const char*, streamsize);
#pragma empty_line
#pragma empty_line
  extern template wostream& __ostream_insert(wostream&, const wchar_t*,
          streamsize);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
} // namespace std
#pragma line 46 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 1 3
// Functor implementations -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2009, 2010, 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996-1998
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file bits/stl_function.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{functional}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // 20.3.1 base classes
  /** @defgroup functors Function Objects
   * @ingroup utilities
   *
   *  Function objects, or @e functors, are objects with an @c operator()
   *  defined and accessible.  They can be passed as arguments to algorithm
   *  templates and used in place of a function pointer.  Not only is the
   *  resulting expressiveness of the library increased, but the generated
   *  code can be more efficient than what you might write by hand.  When we
   *  refer to @a functors, then, generally we include function pointers in
   *  the description as well.
   *
   *  Often, functors are only created as temporaries passed to algorithm
   *  calls, rather than being created as named variables.
   *
   *  Two examples taken from the standard itself follow.  To perform a
   *  by-element addition of two vectors @c a and @c b containing @c double,
   *  and put the result in @c a, use
   *  \code
   *  transform (a.begin(), a.end(), b.begin(), a.begin(), plus<double>());
   *  \endcode
   *  To negate every element in @c a, use
   *  \code
   *  transform(a.begin(), a.end(), a.begin(), negate<double>());
   *  \endcode
   *  The addition and negation functions will be inlined directly.
   *
   *  The standard functors are derived from structs named @c unary_function
   *  and @c binary_function.  These two classes contain nothing but typedefs,
   *  to aid in generic (template) programming.  If you write your own
   *  functors, you might consider doing the same.
   *
   *  @{
   */
  /**
   *  This is one of the @link functors functor base classes@endlink.
   */
  template<typename _Arg, typename _Result>
    struct unary_function
    {
      /// @c argument_type is the type of the argument
      typedef _Arg argument_type;
#pragma empty_line
      /// @c result_type is the return type
      typedef _Result result_type;
    };
#pragma empty_line
  /**
   *  This is one of the @link functors functor base classes@endlink.
   */
  template<typename _Arg1, typename _Arg2, typename _Result>
    struct binary_function
    {
      /// @c first_argument_type is the type of the first argument
      typedef _Arg1 first_argument_type;
#pragma empty_line
      /// @c second_argument_type is the type of the second argument
      typedef _Arg2 second_argument_type;
#pragma empty_line
      /// @c result_type is the return type
      typedef _Result result_type;
    };
  /** @}  */
#pragma empty_line
  // 20.3.2 arithmetic
  /** @defgroup arithmetic_functors Arithmetic Classes
   * @ingroup functors
   *
   *  Because basic math often needs to be done during an algorithm,
   *  the library provides functors for those operations.  See the
   *  documentation for @link functors the base classes@endlink
   *  for examples of their use.
   *
   *  @{
   */
  /// One of the @link arithmetic_functors math functors@endlink.
  template<typename _Tp>
    struct plus : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x + __y; }
    };
#pragma empty_line
  /// One of the @link arithmetic_functors math functors@endlink.
  template<typename _Tp>
    struct minus : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x - __y; }
    };
#pragma empty_line
  /// One of the @link arithmetic_functors math functors@endlink.
  template<typename _Tp>
    struct multiplies : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x * __y; }
    };
#pragma empty_line
  /// One of the @link arithmetic_functors math functors@endlink.
  template<typename _Tp>
    struct divides : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x / __y; }
    };
#pragma empty_line
  /// One of the @link arithmetic_functors math functors@endlink.
  template<typename _Tp>
    struct modulus : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x % __y; }
    };
#pragma empty_line
  /// One of the @link arithmetic_functors math functors@endlink.
  template<typename _Tp>
    struct negate : public unary_function<_Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x) const
      { return -__x; }
    };
  /** @}  */
#pragma empty_line
  // 20.3.3 comparisons
  /** @defgroup comparison_functors Comparison Classes
   * @ingroup functors
   *
   *  The library provides six wrapper functors for all the basic comparisons
   *  in C++, like @c <.
   *
   *  @{
   */
  /// One of the @link comparison_functors comparison functors@endlink.
  template<typename _Tp>
    struct equal_to : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x == __y; }
    };
#pragma empty_line
  /// One of the @link comparison_functors comparison functors@endlink.
  template<typename _Tp>
    struct not_equal_to : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x != __y; }
    };
#pragma empty_line
  /// One of the @link comparison_functors comparison functors@endlink.
  template<typename _Tp>
    struct greater : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x > __y; }
    };
#pragma empty_line
  /// One of the @link comparison_functors comparison functors@endlink.
  template<typename _Tp>
    struct less : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x < __y; }
    };
#pragma empty_line
  /// One of the @link comparison_functors comparison functors@endlink.
  template<typename _Tp>
    struct greater_equal : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x >= __y; }
    };
#pragma empty_line
  /// One of the @link comparison_functors comparison functors@endlink.
  template<typename _Tp>
    struct less_equal : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x <= __y; }
    };
  /** @}  */
#pragma empty_line
  // 20.3.4 logical operations
  /** @defgroup logical_functors Boolean Operations Classes
   * @ingroup functors
   *
   *  Here are wrapper functors for Boolean operations: @c &&, @c ||,
   *  and @c !.
   *
   *  @{
   */
  /// One of the @link logical_functors Boolean operations functors@endlink.
  template<typename _Tp>
    struct logical_and : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x && __y; }
    };
#pragma empty_line
  /// One of the @link logical_functors Boolean operations functors@endlink.
  template<typename _Tp>
    struct logical_or : public binary_function<_Tp, _Tp, bool>
    {
      bool
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x || __y; }
    };
#pragma empty_line
  /// One of the @link logical_functors Boolean operations functors@endlink.
  template<typename _Tp>
    struct logical_not : public unary_function<_Tp, bool>
    {
      bool
      operator()(const _Tp& __x) const
      { return !__x; }
    };
  /** @}  */
#pragma empty_line
  // _GLIBCXX_RESOLVE_LIB_DEFECTS
  // DR 660. Missing Bitwise Operations.
  template<typename _Tp>
    struct bit_and : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x & __y; }
    };
#pragma empty_line
  template<typename _Tp>
    struct bit_or : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x | __y; }
    };
#pragma empty_line
  template<typename _Tp>
    struct bit_xor : public binary_function<_Tp, _Tp, _Tp>
    {
      _Tp
      operator()(const _Tp& __x, const _Tp& __y) const
      { return __x ^ __y; }
    };
#pragma empty_line
  // 20.3.5 negators
  /** @defgroup negators Negators
   * @ingroup functors
   *
   *  The functions @c not1 and @c not2 each take a predicate functor
   *  and return an instance of @c unary_negate or
   *  @c binary_negate, respectively.  These classes are functors whose
   *  @c operator() performs the stored predicate function and then returns
   *  the negation of the result.
   *
   *  For example, given a vector of integers and a trivial predicate,
   *  \code
   *  struct IntGreaterThanThree
   *    : public std::unary_function<int, bool>
   *  {
   *      bool operator() (int x) { return x > 3; }
   *  };
   *
   *  std::find_if (v.begin(), v.end(), not1(IntGreaterThanThree()));
   *  \endcode
   *  The call to @c find_if will locate the first index (i) of @c v for which
   *  <code>!(v[i] > 3)</code> is true.
   *
   *  The not1/unary_negate combination works on predicates taking a single
   *  argument.  The not2/binary_negate combination works on predicates which
   *  take two arguments.
   *
   *  @{
   */
  /// One of the @link negators negation functors@endlink.
  template<typename _Predicate>
    class unary_negate
    : public unary_function<typename _Predicate::argument_type, bool>
    {
    protected:
      _Predicate _M_pred;
#pragma empty_line
    public:
      explicit
      unary_negate(const _Predicate& __x) : _M_pred(__x) { }
#pragma empty_line
      bool
      operator()(const typename _Predicate::argument_type& __x) const
      { return !_M_pred(__x); }
    };
#pragma empty_line
  /// One of the @link negators negation functors@endlink.
  template<typename _Predicate>
    inline unary_negate<_Predicate>
    not1(const _Predicate& __pred)
    { return unary_negate<_Predicate>(__pred); }
#pragma empty_line
  /// One of the @link negators negation functors@endlink.
  template<typename _Predicate>
    class binary_negate
    : public binary_function<typename _Predicate::first_argument_type,
        typename _Predicate::second_argument_type, bool>
    {
    protected:
      _Predicate _M_pred;
#pragma empty_line
    public:
      explicit
      binary_negate(const _Predicate& __x) : _M_pred(__x) { }
#pragma empty_line
      bool
      operator()(const typename _Predicate::first_argument_type& __x,
   const typename _Predicate::second_argument_type& __y) const
      { return !_M_pred(__x, __y); }
    };
#pragma empty_line
  /// One of the @link negators negation functors@endlink.
  template<typename _Predicate>
    inline binary_negate<_Predicate>
    not2(const _Predicate& __pred)
    { return binary_negate<_Predicate>(__pred); }
  /** @}  */
#pragma empty_line
  // 20.3.7 adaptors pointers functions
  /** @defgroup pointer_adaptors Adaptors for pointers to functions
   * @ingroup functors
   *
   *  The advantage of function objects over pointers to functions is that
   *  the objects in the standard library declare nested typedefs describing
   *  their argument and result types with uniform names (e.g., @c result_type
   *  from the base classes @c unary_function and @c binary_function).
   *  Sometimes those typedefs are required, not just optional.
   *
   *  Adaptors are provided to turn pointers to unary (single-argument) and
   *  binary (double-argument) functions into function objects.  The
   *  long-winded functor @c pointer_to_unary_function is constructed with a
   *  function pointer @c f, and its @c operator() called with argument @c x
   *  returns @c f(x).  The functor @c pointer_to_binary_function does the same
   *  thing, but with a double-argument @c f and @c operator().
   *
   *  The function @c ptr_fun takes a pointer-to-function @c f and constructs
   *  an instance of the appropriate functor.
   *
   *  @{
   */
  /// One of the @link pointer_adaptors adaptors for function pointers@endlink.
  template<typename _Arg, typename _Result>
    class pointer_to_unary_function : public unary_function<_Arg, _Result>
    {
    protected:
      _Result (*_M_ptr)(_Arg);
#pragma empty_line
    public:
      pointer_to_unary_function() { }
#pragma empty_line
      explicit
      pointer_to_unary_function(_Result (*__x)(_Arg))
      : _M_ptr(__x) { }
#pragma empty_line
      _Result
      operator()(_Arg __x) const
      { return _M_ptr(__x); }
    };
#pragma empty_line
  /// One of the @link pointer_adaptors adaptors for function pointers@endlink.
  template<typename _Arg, typename _Result>
    inline pointer_to_unary_function<_Arg, _Result>
    ptr_fun(_Result (*__x)(_Arg))
    { return pointer_to_unary_function<_Arg, _Result>(__x); }
#pragma empty_line
  /// One of the @link pointer_adaptors adaptors for function pointers@endlink.
  template<typename _Arg1, typename _Arg2, typename _Result>
    class pointer_to_binary_function
    : public binary_function<_Arg1, _Arg2, _Result>
    {
    protected:
      _Result (*_M_ptr)(_Arg1, _Arg2);
#pragma empty_line
    public:
      pointer_to_binary_function() { }
#pragma empty_line
      explicit
      pointer_to_binary_function(_Result (*__x)(_Arg1, _Arg2))
      : _M_ptr(__x) { }
#pragma empty_line
      _Result
      operator()(_Arg1 __x, _Arg2 __y) const
      { return _M_ptr(__x, __y); }
    };
#pragma empty_line
  /// One of the @link pointer_adaptors adaptors for function pointers@endlink.
  template<typename _Arg1, typename _Arg2, typename _Result>
    inline pointer_to_binary_function<_Arg1, _Arg2, _Result>
    ptr_fun(_Result (*__x)(_Arg1, _Arg2))
    { return pointer_to_binary_function<_Arg1, _Arg2, _Result>(__x); }
  /** @}  */
#pragma empty_line
  template<typename _Tp>
    struct _Identity : public unary_function<_Tp,_Tp>
    {
      _Tp&
      operator()(_Tp& __x) const
      { return __x; }
#pragma empty_line
      const _Tp&
      operator()(const _Tp& __x) const
      { return __x; }
    };
#pragma empty_line
  template<typename _Pair>
    struct _Select1st : public unary_function<_Pair,
           typename _Pair::first_type>
    {
      typename _Pair::first_type&
      operator()(_Pair& __x) const
      { return __x.first; }
#pragma empty_line
      const typename _Pair::first_type&
      operator()(const _Pair& __x) const
      { return __x.first; }
#pragma line 508 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 3
    };
#pragma empty_line
  template<typename _Pair>
    struct _Select2nd : public unary_function<_Pair,
           typename _Pair::second_type>
    {
      typename _Pair::second_type&
      operator()(_Pair& __x) const
      { return __x.second; }
#pragma empty_line
      const typename _Pair::second_type&
      operator()(const _Pair& __x) const
      { return __x.second; }
    };
#pragma empty_line
  // 20.3.8 adaptors pointers members
  /** @defgroup memory_adaptors Adaptors for pointers to members
   * @ingroup functors
   *
   *  There are a total of 8 = 2^3 function objects in this family.
   *   (1) Member functions taking no arguments vs member functions taking
   *        one argument.
   *   (2) Call through pointer vs call through reference.
   *   (3) Const vs non-const member function.
   *
   *  All of this complexity is in the function objects themselves.  You can
   *   ignore it by using the helper function mem_fun and mem_fun_ref,
   *   which create whichever type of adaptor is appropriate.
   *
   *  @{
   */
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp>
    class mem_fun_t : public unary_function<_Tp*, _Ret>
    {
    public:
      explicit
      mem_fun_t(_Ret (_Tp::*__pf)())
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp* __p) const
      { return (__p->*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)();
    };
#pragma empty_line
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp>
    class const_mem_fun_t : public unary_function<const _Tp*, _Ret>
    {
    public:
      explicit
      const_mem_fun_t(_Ret (_Tp::*__pf)() const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp* __p) const
      { return (__p->*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)() const;
    };
#pragma empty_line
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp>
    class mem_fun_ref_t : public unary_function<_Tp, _Ret>
    {
    public:
      explicit
      mem_fun_ref_t(_Ret (_Tp::*__pf)())
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp& __r) const
      { return (__r.*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)();
  };
#pragma empty_line
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp>
    class const_mem_fun_ref_t : public unary_function<_Tp, _Ret>
    {
    public:
      explicit
      const_mem_fun_ref_t(_Ret (_Tp::*__pf)() const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp& __r) const
      { return (__r.*_M_f)(); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)() const;
    };
#pragma empty_line
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp, typename _Arg>
    class mem_fun1_t : public binary_function<_Tp*, _Arg, _Ret>
    {
    public:
      explicit
      mem_fun1_t(_Ret (_Tp::*__pf)(_Arg))
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp* __p, _Arg __x) const
      { return (__p->*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg);
    };
#pragma empty_line
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp, typename _Arg>
    class const_mem_fun1_t : public binary_function<const _Tp*, _Arg, _Ret>
    {
    public:
      explicit
      const_mem_fun1_t(_Ret (_Tp::*__pf)(_Arg) const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp* __p, _Arg __x) const
      { return (__p->*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg) const;
    };
#pragma empty_line
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp, typename _Arg>
    class mem_fun1_ref_t : public binary_function<_Tp, _Arg, _Ret>
    {
    public:
      explicit
      mem_fun1_ref_t(_Ret (_Tp::*__pf)(_Arg))
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(_Tp& __r, _Arg __x) const
      { return (__r.*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg);
    };
#pragma empty_line
  /// One of the @link memory_adaptors adaptors for member
  /// pointers@endlink.
  template<typename _Ret, typename _Tp, typename _Arg>
    class const_mem_fun1_ref_t : public binary_function<_Tp, _Arg, _Ret>
    {
    public:
      explicit
      const_mem_fun1_ref_t(_Ret (_Tp::*__pf)(_Arg) const)
      : _M_f(__pf) { }
#pragma empty_line
      _Ret
      operator()(const _Tp& __r, _Arg __x) const
      { return (__r.*_M_f)(__x); }
#pragma empty_line
    private:
      _Ret (_Tp::*_M_f)(_Arg) const;
    };
#pragma empty_line
  // Mem_fun adaptor helper functions.  There are only two:
  // mem_fun and mem_fun_ref.
  template<typename _Ret, typename _Tp>
    inline mem_fun_t<_Ret, _Tp>
    mem_fun(_Ret (_Tp::*__f)())
    { return mem_fun_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp>
    inline const_mem_fun_t<_Ret, _Tp>
    mem_fun(_Ret (_Tp::*__f)() const)
    { return const_mem_fun_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp>
    inline mem_fun_ref_t<_Ret, _Tp>
    mem_fun_ref(_Ret (_Tp::*__f)())
    { return mem_fun_ref_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp>
    inline const_mem_fun_ref_t<_Ret, _Tp>
    mem_fun_ref(_Ret (_Tp::*__f)() const)
    { return const_mem_fun_ref_t<_Ret, _Tp>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline mem_fun1_t<_Ret, _Tp, _Arg>
    mem_fun(_Ret (_Tp::*__f)(_Arg))
    { return mem_fun1_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline const_mem_fun1_t<_Ret, _Tp, _Arg>
    mem_fun(_Ret (_Tp::*__f)(_Arg) const)
    { return const_mem_fun1_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline mem_fun1_ref_t<_Ret, _Tp, _Arg>
    mem_fun_ref(_Ret (_Tp::*__f)(_Arg))
    { return mem_fun1_ref_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
  template<typename _Ret, typename _Tp, typename _Arg>
    inline const_mem_fun1_ref_t<_Ret, _Tp, _Arg>
    mem_fun_ref(_Ret (_Tp::*__f)(_Arg) const)
    { return const_mem_fun1_ref_t<_Ret, _Tp, _Arg>(__f); }
#pragma empty_line
  /** @}  */
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/backward/binders.h" 1 3
// Functor implementations -*- C++ -*-
#pragma empty_line
// Copyright (C) 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2009, 2010, 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/*
 *
 * Copyright (c) 1994
 * Hewlett-Packard Company
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Hewlett-Packard Company makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 *
 *
 * Copyright (c) 1996-1998
 * Silicon Graphics Computer Systems, Inc.
 *
 * Permission to use, copy, modify, distribute and sell this software
 * and its documentation for any purpose is hereby granted without fee,
 * provided that the above copyright notice appear in all copies and
 * that both that copyright notice and this permission notice appear
 * in supporting documentation.  Silicon Graphics makes no
 * representations about the suitability of this software for any
 * purpose.  It is provided "as is" without express or implied warranty.
 */
#pragma empty_line
/** @file backward/binders.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{functional}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // 20.3.6 binders
  /** @defgroup binders Binder Classes
   * @ingroup functors
   *
   *  Binders turn functions/functors with two arguments into functors
   *  with a single argument, storing an argument to be applied later.
   *  For example, a variable @c B of type @c binder1st is constructed
   *  from a functor @c f and an argument @c x. Later, B's @c
   *  operator() is called with a single argument @c y. The return
   *  value is the value of @c f(x,y). @c B can be @a called with
   *  various arguments (y1, y2, ...) and will in turn call @c
   *  f(x,y1), @c f(x,y2), ...
   *
   *  The function @c bind1st is provided to save some typing. It takes the
   *  function and an argument as parameters, and returns an instance of
   *  @c binder1st.
   *
   *  The type @c binder2nd and its creator function @c bind2nd do the same
   *  thing, but the stored argument is passed as the second parameter instead
   *  of the first, e.g., @c bind2nd(std::minus<float>,1.3) will create a
   *  functor whose @c operator() accepts a floating-point number, subtracts
   *  1.3 from it, and returns the result. (If @c bind1st had been used,
   *  the functor would perform <em>1.3 - x</em> instead.
   *
   *  Creator-wrapper functions like @c bind1st are intended to be used in
   *  calling algorithms. Their return values will be temporary objects.
   *  (The goal is to not require you to type names like
   *  @c std::binder1st<std::plus<int>> for declaring a variable to hold the
   *  return value from @c bind1st(std::plus<int>,5).
   *
   *  These become more useful when combined with the composition functions.
   *
   *  @{
   */
  /// One of the @link binders binder functors@endlink.
  template<typename _Operation>
    class binder1st
    : public unary_function<typename _Operation::second_argument_type,
       typename _Operation::result_type>
    {
    protected:
      _Operation op;
      typename _Operation::first_argument_type value;
#pragma empty_line
    public:
      binder1st(const _Operation& __x,
  const typename _Operation::first_argument_type& __y)
      : op(__x), value(__y) { }
#pragma empty_line
      typename _Operation::result_type
      operator()(const typename _Operation::second_argument_type& __x) const
      { return op(value, __x); }
#pragma empty_line
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 109.  Missing binders for non-const sequence elements
      typename _Operation::result_type
      operator()(typename _Operation::second_argument_type& __x) const
      { return op(value, __x); }
    } ;
#pragma empty_line
  /// One of the @link binders binder functors@endlink.
  template<typename _Operation, typename _Tp>
    inline binder1st<_Operation>
    bind1st(const _Operation& __fn, const _Tp& __x)
    {
      typedef typename _Operation::first_argument_type _Arg1_type;
      return binder1st<_Operation>(__fn, _Arg1_type(__x));
    }
#pragma empty_line
  /// One of the @link binders binder functors@endlink.
  template<typename _Operation>
    class binder2nd
    : public unary_function<typename _Operation::first_argument_type,
       typename _Operation::result_type>
    {
    protected:
      _Operation op;
      typename _Operation::second_argument_type value;
#pragma empty_line
    public:
      binder2nd(const _Operation& __x,
  const typename _Operation::second_argument_type& __y)
      : op(__x), value(__y) { }
#pragma empty_line
      typename _Operation::result_type
      operator()(const typename _Operation::first_argument_type& __x) const
      { return op(__x, value); }
#pragma empty_line
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 109.  Missing binders for non-const sequence elements
      typename _Operation::result_type
      operator()(typename _Operation::first_argument_type& __x) const
      { return op(__x, value); }
    } ;
#pragma empty_line
  /// One of the @link binders binder functors@endlink.
  template<typename _Operation, typename _Tp>
    inline binder2nd<_Operation>
    bind2nd(const _Operation& __fn, const _Tp& __x)
    {
      typedef typename _Operation::second_argument_type _Arg2_type;
      return binder2nd<_Operation>(__fn, _Arg2_type(__x));
    }
  /** @}  */
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 732 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_function.h" 2 3
#pragma line 50 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/range_access.h" 1 3
// <range_access.h> -*- C++ -*-
#pragma empty_line
// Copyright (C) 2010 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/range_access.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{iterator}
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 33 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/range_access.h" 3
#pragma line 53 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 1 3
// Components for manipulating sequences of characters -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010, 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/basic_string.h
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{string}
 */
#pragma empty_line
//
// ISO C++ 14882: 21 Strings library
//
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 39 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 1 3
// Support for atomic operations -*- C++ -*-
#pragma empty_line
// Copyright (C) 2004, 2005, 2006, 2008, 2009, 2010
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file ext/atomicity.h
 *  This file is a GNU extension to the Standard C++ Library.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 1 3
/* Threads compatibility routines for libgcc2.  */
/* Compile this one with gcc.  */
/* Copyright (C) 1997, 1998, 2004, 2008, 2009 Free Software Foundation, Inc.
#pragma empty_line
This file is part of GCC.
#pragma empty_line
GCC is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3, or (at your option) any later
version.
#pragma empty_line
GCC is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.
#pragma empty_line
Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.
#pragma empty_line
You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma GCC visibility push(default)
#pragma empty_line
#pragma empty_line
/* If this file is compiled with threads support, it must
       #define __GTHREADS 1
   to indicate that threads support is present.  Also it has define
   function
     int __gthread_active_p ()
   that returns 1 if thread system is active, 0 if not.
#pragma empty_line
   The threads interface must define the following types:
     __gthread_key_t
     __gthread_once_t
     __gthread_mutex_t
     __gthread_recursive_mutex_t
#pragma empty_line
   The threads interface must define the following macros:
#pragma empty_line
     __GTHREAD_ONCE_INIT
     		to initialize __gthread_once_t
     __GTHREAD_MUTEX_INIT
     		to initialize __gthread_mutex_t to get a fast
		non-recursive mutex.
     __GTHREAD_MUTEX_INIT_FUNCTION
     		some systems can't initialize a mutex without a
		function call.  On such systems, define this to a
		function which looks like this:
		  void __GTHREAD_MUTEX_INIT_FUNCTION (__gthread_mutex_t *)
		Don't define __GTHREAD_MUTEX_INIT in this case
     __GTHREAD_RECURSIVE_MUTEX_INIT
     __GTHREAD_RECURSIVE_MUTEX_INIT_FUNCTION
     		as above, but for a recursive mutex.
#pragma empty_line
   The threads interface must define the following static functions:
#pragma empty_line
     int __gthread_once (__gthread_once_t *once, void (*func) ())
#pragma empty_line
     int __gthread_key_create (__gthread_key_t *keyp, void (*dtor) (void *))
     int __gthread_key_delete (__gthread_key_t key)
#pragma empty_line
     void *__gthread_getspecific (__gthread_key_t key)
     int __gthread_setspecific (__gthread_key_t key, const void *ptr)
#pragma empty_line
     int __gthread_mutex_destroy (__gthread_mutex_t *mutex);
#pragma empty_line
     int __gthread_mutex_lock (__gthread_mutex_t *mutex);
     int __gthread_mutex_trylock (__gthread_mutex_t *mutex);
     int __gthread_mutex_unlock (__gthread_mutex_t *mutex);
#pragma empty_line
     int __gthread_recursive_mutex_lock (__gthread_recursive_mutex_t *mutex);
     int __gthread_recursive_mutex_trylock (__gthread_recursive_mutex_t *mutex);
     int __gthread_recursive_mutex_unlock (__gthread_recursive_mutex_t *mutex);
#pragma empty_line
   The following are supported in POSIX threads only. They are required to
   fix a deadlock in static initialization inside libsupc++. The header file
   gthr-posix.h defines a symbol __GTHREAD_HAS_COND to signify that these extra
   features are supported.
#pragma empty_line
   Types:
     __gthread_cond_t
#pragma empty_line
   Macros:
     __GTHREAD_COND_INIT
     __GTHREAD_COND_INIT_FUNCTION
#pragma empty_line
   Interface:
     int __gthread_cond_broadcast (__gthread_cond_t *cond);
     int __gthread_cond_wait (__gthread_cond_t *cond, __gthread_mutex_t *mutex);
     int __gthread_cond_wait_recursive (__gthread_cond_t *cond,
					__gthread_recursive_mutex_t *mutex);
#pragma empty_line
   All functions returning int should return zero on success or the error
   number.  If the operation is not supported, -1 is returned.
#pragma empty_line
   If the following are also defined, you should
     #define __GTHREADS_CXX0X 1
   to enable the c++0x thread library.
#pragma empty_line
   Types:
     __gthread_t
     __gthread_time_t
#pragma empty_line
   Interface:
     int __gthread_create (__gthread_t *thread, void *(*func) (void*),
                           void *args);
     int __gthread_join (__gthread_t thread, void **value_ptr);
     int __gthread_detach (__gthread_t thread);
     int __gthread_equal (__gthread_t t1, __gthread_t t2);
     __gthread_t __gthread_self (void);
     int __gthread_yield (void);
#pragma empty_line
     int __gthread_mutex_timedlock (__gthread_mutex_t *m,
                                    const __gthread_time_t *abs_timeout);
     int __gthread_recursive_mutex_timedlock (__gthread_recursive_mutex_t *m,
                                          const __gthread_time_t *abs_time);
#pragma empty_line
     int __gthread_cond_signal (__gthread_cond_t *cond);
     int __gthread_cond_timedwait (__gthread_cond_t *cond,
                                   __gthread_mutex_t *mutex,
                                   const __gthread_time_t *abs_timeout);
     int __gthread_cond_timedwait_recursive (__gthread_cond_t *cond,
                                             __gthread_recursive_mutex_t *mutex,
                                             const __gthread_time_t *abs_time)
#pragma empty_line
   Currently supported threads packages are
     TPF threads with -D__tpf__
     POSIX/Unix98 threads with -D_PTHREADS
     POSIX/Unix95 threads with -D_PTHREADS95
     DCE threads with -D_DCE_THREADS
     Solaris/UI threads with -D_SOLARIS_THREADS
#pragma empty_line
*/
#pragma empty_line
/* Check first for thread specific defines.  */
#pragma line 158 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 3
/* The pe-coff weak support isn't fully compatible to ELF's weak.
   For static libraries it might would work, but as we need to deal
   with shared versions too, we disable it for mingw-targets.  */
#pragma line 170 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 1 3
/* Threads compatibility routines for libgcc2 and libobjc.  */
/* Compile this one with gcc.  */
/* Copyright (C) 1997, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007,
   2008, 2009, 2010 Free Software Foundation, Inc.
#pragma empty_line
This file is part of GCC.
#pragma empty_line
GCC is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free
Software Foundation; either version 3, or (at your option) any later
version.
#pragma empty_line
GCC is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or
FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
for more details.
#pragma empty_line
Under Section 7 of GPL version 3, you are granted additional
permissions described in the GCC Runtime Library Exception, version
3.1, as published by the Free Software Foundation.
#pragma empty_line
You should have received a copy of the GNU General Public License and
a copy of the GCC Runtime Library Exception along with this program;
see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
<http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* POSIX threads specific definitions.
   Easy, since the interface is just one-to-one mapping.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Some implementations of <pthread.h> require this to be defined.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/pthread.h" 1 3 4
/* Copyright (C) 2002-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/sched.h" 1 3 4
/* Definitions for POSIX 1003.1b-1993 (aka POSIX.4) scheduling interface.
   Copyright (C) 1996-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get type definitions.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#pragma line 56 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma line 29 "/usr/include/sched.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/time.h" 1 3 4
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	ISO C99 Standard: 7.23 Date and time	<time.h>
 */
#pragma line 74 "/usr/include/time.h" 3 4
/* Returned by `time'.  */
typedef __time_t time_t;
#pragma line 118 "/usr/include/time.h" 3 4
/* POSIX.1b structure for a time value.  This is like a `struct timeval' but
   has nanoseconds instead of microseconds.  */
struct timespec
  {
    __time_t tv_sec; /* Seconds.  */
    __syscall_slong_t tv_nsec; /* Nanoseconds.  */
  };
#pragma line 33 "/usr/include/sched.h" 2 3 4
#pragma empty_line
#pragma empty_line
typedef __pid_t pid_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get system specific constant and data structure definitions.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/sched.h" 1 3 4
/* Definitions of constants and data structure for POSIX 1003.1b-1993
   scheduling interface.
   Copyright (C) 1996-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma line 27 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
/* Scheduling algorithms.  */
#pragma line 39 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
/* Cloning flags.  */
#pragma line 71 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
/* The official definition.  */
struct sched_param
  {
    int __sched_priority;
  };
#pragma empty_line
extern "C" {
#pragma empty_line
#pragma empty_line
/* Clone current process.  */
extern int clone (int (*__fn) (void *__arg), void *__child_stack,
    int __flags, void *__arg, ...) throw ();
#pragma empty_line
/* Unshare the specified resources.  */
extern int unshare (int __flags) throw ();
#pragma empty_line
/* Get index of currently used CPU.  */
extern int sched_getcpu (void) throw ();
#pragma empty_line
/* Switch process to namespace of type NSTYPE indicated by FD.  */
extern int setns (int __fd, int __nstype) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Data structure to describe a process' schedulability.  */
struct __sched_param
  {
    int __sched_priority;
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Size definition for CPU sets.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Type for array elements in 'cpu_set_t'.  */
typedef unsigned long int __cpu_mask;
#pragma empty_line
/* Basic access functions.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Data structure to describe CPU mask.  */
typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;
#pragma empty_line
/* Access functions for CPU masks.  */
#pragma line 201 "/usr/include/x86_64-linux-gnu/bits/sched.h" 3 4
extern "C" {
#pragma empty_line
extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
  throw ();
extern cpu_set_t *__sched_cpualloc (size_t __count) throw () /* Ignore */;
extern void __sched_cpufree (cpu_set_t *__set) throw ();
#pragma empty_line
}
#pragma line 42 "/usr/include/sched.h" 2 3 4
/* Define the real names for the elements of `struct sched_param'.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
/* Set scheduling parameters for a process.  */
extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     throw ();
#pragma empty_line
/* Retrieve scheduling parameters for a particular process.  */
extern int sched_getparam (__pid_t __pid, struct sched_param *__param) throw ();
#pragma empty_line
/* Set scheduling algorithm and/or parameters for a process.  */
extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) throw ();
#pragma empty_line
/* Retrieve scheduling algorithm for a particular purpose.  */
extern int sched_getscheduler (__pid_t __pid) throw ();
#pragma empty_line
/* Yield the processor.  */
extern int sched_yield (void) throw ();
#pragma empty_line
/* Get maximum priority value for a scheduler.  */
extern int sched_get_priority_max (int __algorithm) throw ();
#pragma empty_line
/* Get minimum priority value for a scheduler.  */
extern int sched_get_priority_min (int __algorithm) throw ();
#pragma empty_line
/* Get the SCHED_RR interval for the named process.  */
extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Access macros for `cpu_set'.  */
#pragma line 115 "/usr/include/sched.h" 3 4
/* Set the CPU affinity for a task */
extern int sched_setaffinity (__pid_t __pid, size_t __cpusetsize,
         const cpu_set_t *__cpuset) throw ();
#pragma empty_line
/* Get the CPU affinity for a task */
extern int sched_getaffinity (__pid_t __pid, size_t __cpusetsize,
         cpu_set_t *__cpuset) throw ();
#pragma empty_line
#pragma empty_line
}
#pragma line 24 "/usr/include/pthread.h" 2 3 4
#pragma line 1 "/usr/include/time.h" 1 3 4
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	ISO C99 Standard: 7.23 Date and time	<time.h>
 */
#pragma line 29 "/usr/include/time.h" 3 4
extern "C" {
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get size_t and NULL from <stddef.h>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#pragma line 56 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma line 38 "/usr/include/time.h" 2 3 4
#pragma empty_line
/* This defines CLOCKS_PER_SEC, which is the number of processor clock
   ticks per second.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
/* System-dependent timing definitions.  Linux version.
   Copyright (C) 1996-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 * Never include this file directly; use <time.h> instead.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* A time value that is accurate to the nearest
   microsecond but also has a range of years.  */
struct timeval
  {
    __time_t tv_sec; /* Seconds.  */
    __suseconds_t tv_usec; /* Microseconds.  */
  };
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* ISO/IEC 9899:1990 7.12.1: <time.h>
   The macro `CLOCKS_PER_SEC' is the number per second of the value
   returned by the `clock' function. */
/* CAE XSH, Issue 4, Version 2: <time.h>
   The value of CLOCKS_PER_SEC is required to be 1 million on all
   XSI-conformant systems. */
#pragma line 60 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
/* Identifier for system-wide realtime clock.  */
#pragma empty_line
/* Monotonic system-wide clock.  */
#pragma empty_line
/* High-resolution timer from the CPU.  */
#pragma empty_line
/* Thread-specific CPU-time clock.  */
#pragma empty_line
/* Monotonic system-wide clock, not adjusted for frequency scaling.  */
#pragma empty_line
/* Identifier for system-wide realtime clock, updated only on ticks.  */
#pragma empty_line
/* Monotonic system-wide clock, updated only on ticks.  */
#pragma empty_line
/* Monotonic system-wide clock that includes time spent in suspension.  */
#pragma empty_line
/* Like CLOCK_REALTIME but also wakes suspended system.  */
#pragma empty_line
/* Like CLOCK_BOOTTIME but also wakes suspended system.  */
#pragma empty_line
#pragma empty_line
/* Flag to indicate time is absolute.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/timex.h" 1 3 4
/* Copyright (C) 1995-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* These definitions from linux/timex.h as of 2.6.30.  */
#pragma empty_line
struct timex
{
  unsigned int modes; /* mode selector */
  __syscall_slong_t offset; /* time offset (usec) */
  __syscall_slong_t freq; /* frequency offset (scaled ppm) */
  __syscall_slong_t maxerror; /* maximum error (usec) */
  __syscall_slong_t esterror; /* estimated error (usec) */
  int status; /* clock command/status */
  __syscall_slong_t constant; /* pll time constant */
  __syscall_slong_t precision; /* clock precision (usec) (ro) */
  __syscall_slong_t tolerance; /* clock frequency tolerance (ppm) (ro) */
  struct timeval time; /* (read only) */
  __syscall_slong_t tick; /* (modified) usecs between clock ticks */
  __syscall_slong_t ppsfreq; /* pps frequency (scaled ppm) (ro) */
  __syscall_slong_t jitter; /* pps jitter (us) (ro) */
  int shift; /* interval duration (s) (shift) (ro) */
  __syscall_slong_t stabil; /* pps stability (scaled ppm) (ro) */
  __syscall_slong_t jitcnt; /* jitter limit exceeded (ro) */
  __syscall_slong_t calcnt; /* calibration intervals (ro) */
  __syscall_slong_t errcnt; /* calibration errors (ro) */
  __syscall_slong_t stbcnt; /* stability limit exceeded (ro) */
#pragma empty_line
  int tai; /* TAI offset (ro) */
#pragma empty_line
  /* ??? */
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};
#pragma empty_line
/* Mode codes (timex.mode) */
#pragma line 69 "/usr/include/x86_64-linux-gnu/bits/timex.h" 3 4
/* xntp 3.4 compatibility names */
#pragma line 83 "/usr/include/x86_64-linux-gnu/bits/timex.h" 3 4
/* Status codes (timex.status) */
#pragma line 104 "/usr/include/x86_64-linux-gnu/bits/timex.h" 3 4
/* Read-only bits */
#pragma line 87 "/usr/include/x86_64-linux-gnu/bits/time.h" 2 3 4
#pragma empty_line
extern "C" {
#pragma empty_line
/* Tune a POSIX clock.  */
extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) throw ();
#pragma empty_line
}
#pragma line 42 "/usr/include/time.h" 2 3 4
#pragma empty_line
/* This is the obsolete POSIX.1-1988 name for the same constant.  */
#pragma line 58 "/usr/include/time.h" 3 4
/* Returned by `clock'.  */
typedef __clock_t clock_t;
#pragma line 90 "/usr/include/time.h" 3 4
/* Clock ID used in clock and timer functions.  */
typedef __clockid_t clockid_t;
#pragma line 102 "/usr/include/time.h" 3 4
/* Timer ID returned by `timer_create'.  */
typedef __timer_t timer_t;
#pragma line 132 "/usr/include/time.h" 3 4
/* Used by other time functions.  */
struct tm
{
  int tm_sec; /* Seconds.	[0-60] (1 leap second) */
  int tm_min; /* Minutes.	[0-59] */
  int tm_hour; /* Hours.	[0-23] */
  int tm_mday; /* Day.		[1-31] */
  int tm_mon; /* Month.	[0-11] */
  int tm_year; /* Year	- 1900.  */
  int tm_wday; /* Day of week.	[0-6] */
  int tm_yday; /* Days in year.[0-365]	*/
  int tm_isdst; /* DST.		[-1/0/1]*/
#pragma empty_line
#pragma empty_line
  long int tm_gmtoff; /* Seconds east of UTC.  */
  const char *tm_zone; /* Timezone abbreviation.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* POSIX.1b structure for timer start values and intervals.  */
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
#pragma empty_line
/* We can use a simple forward declaration.  */
struct sigevent;
#pragma line 181 "/usr/include/time.h" 3 4
/* Time base values for timespec_get.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Time used by the program so far (user time + system time).
   The result / CLOCKS_PER_SECOND is program time in seconds.  */
extern clock_t clock (void) throw ();
#pragma empty_line
/* Return the current time and put it in *TIMER if TIMER is not NULL.  */
extern time_t time (time_t *__timer) throw ();
#pragma empty_line
/* Return the difference between TIME1 and TIME0.  */
extern double difftime (time_t __time1, time_t __time0)
     throw () __attribute__ ((__const__));
#pragma empty_line
/* Return the `time_t' representation of TP and normalize TP.  */
extern time_t mktime (struct tm *__tp) throw ();
#pragma empty_line
#pragma empty_line
/* Format TP into S according to FORMAT.
   Write no more than MAXSIZE characters and return the number
   of characters written, or 0 if it would exceed MAXSIZE.  */
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Parse S according to FORMAT and store binary time information in TP.
   The return value is a pointer to the first unparsed character in S.  */
extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Similar to the two functions above but take the information from
   the provided locale and not the global locale.  */
#pragma empty_line
#pragma empty_line
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     __locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    __locale_t __loc) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return the `struct tm' representation of *TIMER
   in Universal Coordinated Time (aka Greenwich Mean Time).  */
extern struct tm *gmtime (const time_t *__timer) throw ();
#pragma empty_line
/* Return the `struct tm' representation
   of *TIMER in the local timezone.  */
extern struct tm *localtime (const time_t *__timer) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return the `struct tm' representation of *TIMER in UTC,
   using *TP to store the result.  */
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) throw ();
#pragma empty_line
/* Return the `struct tm' representation of *TIMER in local time,
   using *TP to store the result.  */
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return a string of the form "Day Mon dd hh:mm:ss yyyy\n"
   that is the representation of TP in this format.  */
extern char *asctime (const struct tm *__tp) throw ();
#pragma empty_line
/* Equivalent to `asctime (localtime (timer))'.  */
extern char *ctime (const time_t *__timer) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Reentrant versions of the above functions.  */
#pragma empty_line
/* Return in BUF a string of the form "Day Mon dd hh:mm:ss yyyy\n"
   that is the representation of TP in this format.  */
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) throw ();
#pragma empty_line
/* Equivalent to `asctime_r (localtime_r (timer, *TMP*), buf)'.  */
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Defined in localtime.c.  */
extern char *__tzname[2]; /* Current timezone names.  */
extern int __daylight; /* If daylight-saving time is ever in use.  */
extern long int __timezone; /* Seconds west of UTC.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Same as above.  */
extern char *tzname[2];
#pragma empty_line
/* Set time conversion information from the TZ environment variable.
   If TZ is not defined, a locale-dependent default is used.  */
extern void tzset (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int daylight;
extern long int timezone;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set the system time to *WHEN.
   This call is restricted to the superuser.  */
extern int stime (const time_t *__when) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Nonzero if YEAR is a leap year (every 4 years,
   except every 100th isn't, and every 400th is).  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Miscellaneous functions many Unices inherited from the public domain
   localtime package.  These are included only for compatibility.  */
#pragma empty_line
/* Like `mktime', but for TP represents Universal Time, not local time.  */
extern time_t timegm (struct tm *__tp) throw ();
#pragma empty_line
/* Another name for `mktime'.  */
extern time_t timelocal (struct tm *__tp) throw ();
#pragma empty_line
/* Return the number of days in YEAR.  */
extern int dysize (int __year) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Pause execution for a number of nanoseconds.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
#pragma empty_line
#pragma empty_line
/* Get resolution of clock CLOCK_ID.  */
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) throw ();
#pragma empty_line
/* Get current value of clock CLOCK_ID and store it in TP.  */
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp) throw ();
#pragma empty_line
/* Set clock CLOCK_ID to value TP.  */
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     throw ();
#pragma empty_line
#pragma empty_line
/* High-resolution sleep with the specified clock.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
#pragma empty_line
/* Return clock ID for CPU-time clock.  */
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Create new per-process timer using CLOCK_ID.  */
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) throw ();
#pragma empty_line
/* Delete timer TIMERID.  */
extern int timer_delete (timer_t __timerid) throw ();
#pragma empty_line
/* Set timer TIMERID to VALUE, returning old value in OVALUE.  */
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) throw ();
#pragma empty_line
/* Get current value of timer TIMERID and store it in VALUE.  */
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     throw ();
#pragma empty_line
/* Get expiration overrun for timer TIMERID.  */
extern int timer_getoverrun (timer_t __timerid) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set TS to calendar time based in time base BASE.  */
extern int timespec_get (struct timespec *__ts, int __base)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set to one of the following values to indicate an error.
     1  the DATEMSK environment variable is null or undefined,
     2  the template file cannot be opened for reading,
     3  failed to get file status information,
     4  the template file is not a regular file,
     5  an error is encountered while reading the template file,
     6  memory allication failed (not enough memory available),
     7  there is no line in the template that matches the input,
     8  invalid input specification Example: February 31 or a time is
	specified that can not be represented in a time_t (representing
	the time in seconds since 00:00:00 UTC, January 1, 1970) */
extern int getdate_err;
#pragma empty_line
/* Parse the given string as a date specification and return a value
   representing the value.  The templates from the file identified by
   the environment variable DATEMSK are used.  In case of an error
   `getdate_err' is set.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern struct tm *getdate (const char *__string);
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Since `getdate' is not reentrant because of the use of `getdate_err'
   and the static buffer to return the result in, we provide a thread-safe
   variant.  The functionality is the same.  The result is returned in
   the buffer pointed to by RESBUFP and in case of an error the return
   value is != 0 with the same values as given above for `getdate_err'.
#pragma empty_line
   This function is not part of POSIX and therefore no official
   cancellation point.  But due to similarity with an POSIX interface
   or due to the implementation it is a cancellation point and
   therefore not marked with __THROW.  */
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);
#pragma empty_line
#pragma empty_line
}
#pragma line 25 "/usr/include/pthread.h" 2 3 4
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
/* Copyright (C) 2002-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
#pragma line 58 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
/* Thread identifiers.  The structure of the attribute type is not
   exposed on purpose.  */
typedef unsigned long int pthread_t;
#pragma empty_line
#pragma empty_line
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
#pragma empty_line
typedef union pthread_attr_t pthread_attr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
#pragma line 88 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
/* Data structures for mutex handling.  The structure of the attribute
   type is not exposed on purpose.  */
typedef union
{
  struct __pthread_mutex_s
  {
    int __lock;
    unsigned int __count;
    int __owner;
#pragma empty_line
    unsigned int __nusers;
#pragma empty_line
    /* KIND must stay at this position in the structure to maintain
       binary compatibility.  */
    int __kind;
#pragma empty_line
    short __spins;
    short __elision;
    __pthread_list_t __list;
#pragma line 124 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  } __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
#pragma empty_line
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
#pragma empty_line
#pragma empty_line
/* Data structure for conditional variable handling.  The structure of
   the attribute type is not exposed on purpose.  */
typedef union
{
  struct
  {
    int __lock;
    unsigned int __futex;
    __extension__ unsigned long long int __total_seq;
    __extension__ unsigned long long int __wakeup_seq;
    __extension__ unsigned long long int __woken_seq;
    void *__mutex;
    unsigned int __nwaiters;
    unsigned int __broadcast_seq;
  } __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
#pragma empty_line
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
#pragma empty_line
#pragma empty_line
/* Keys for thread-specific data */
typedef unsigned int pthread_key_t;
#pragma empty_line
#pragma empty_line
/* Once-only execution */
typedef int pthread_once_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Data structure for read-write lock variable handling.  The
   structure of the attribute type is not exposed on purpose.  */
typedef union
{
#pragma empty_line
  struct
  {
    int __lock;
    unsigned int __nr_readers;
    unsigned int __readers_wakeup;
    unsigned int __writer_wakeup;
    unsigned int __nr_readers_queued;
    unsigned int __nr_writers_queued;
    int __writer;
    int __shared;
    unsigned long int __pad1;
    unsigned long int __pad2;
    /* FLAGS must stay at this position in the structure to maintain
       binary compatibility.  */
    unsigned int __flags;
#pragma empty_line
  } __data;
#pragma line 211 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
  char __size[56];
  long int __align;
} pthread_rwlock_t;
#pragma empty_line
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* POSIX spinlock data type.  */
typedef volatile int pthread_spinlock_t;
#pragma empty_line
#pragma empty_line
/* POSIX barriers data type.  The structure of the type is
   deliberately not exposed.  */
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
#pragma empty_line
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
#pragma line 27 "/usr/include/pthread.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 1 3 4
/* Copyright (C) 2001-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/* Define the machine-dependent type `jmp_buf'.  x86-64 version.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 27 "/usr/include/x86_64-linux-gnu/bits/setjmp.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef long int __jmp_buf[8];
#pragma line 28 "/usr/include/pthread.h" 2 3 4
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 29 "/usr/include/pthread.h" 2 3 4
#pragma empty_line
#pragma empty_line
/* Detach state.  */
enum
{
  PTHREAD_CREATE_JOINABLE,
#pragma empty_line
  PTHREAD_CREATE_DETACHED
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
/* Mutex types.  */
enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP
#pragma empty_line
  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL
#pragma empty_line
#pragma empty_line
  /* For compatibility.  */
  , PTHREAD_MUTEX_FAST_NP = PTHREAD_MUTEX_TIMED_NP
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Robust mutex or not flags.  */
enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Mutex protocols.  */
enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Mutex initializers.  */
#pragma line 123 "/usr/include/pthread.h" 3 4
/* Read-write lock types.  */
#pragma empty_line
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
#pragma empty_line
/* Define __PTHREAD_RWLOCK_INT_FLAGS_SHARED to 1 if pthread_rwlock_t
   has the shared field.  All 64-bit architectures have the shared field
   in pthread_rwlock_t.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Read-write lock initializers.  */
#pragma line 165 "/usr/include/pthread.h" 3 4
/* Scheduler inheritance.  */
enum
{
  PTHREAD_INHERIT_SCHED,
#pragma empty_line
  PTHREAD_EXPLICIT_SCHED
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
/* Scope handling.  */
enum
{
  PTHREAD_SCOPE_SYSTEM,
#pragma empty_line
  PTHREAD_SCOPE_PROCESS
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
/* Process shared or private flag.  */
enum
{
  PTHREAD_PROCESS_PRIVATE,
#pragma empty_line
  PTHREAD_PROCESS_SHARED
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Conditional variable handling.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Cleanup buffers */
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *); /* Function to call.  */
  void *__arg; /* Its argument.  */
  int __canceltype; /* Saved cancellation type. */
  struct _pthread_cleanup_buffer *__prev; /* Chaining of cleanup functions.  */
};
#pragma empty_line
/* Cancellation */
enum
{
  PTHREAD_CANCEL_ENABLE,
#pragma empty_line
  PTHREAD_CANCEL_DISABLE
#pragma empty_line
};
enum
{
  PTHREAD_CANCEL_DEFERRED,
#pragma empty_line
  PTHREAD_CANCEL_ASYNCHRONOUS
#pragma empty_line
};
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Single execution handling.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Value returned by 'pthread_barrier_wait' for one of the threads after
   the required number of threads have called this function.
   -1 is distinct from 0 and all errno constants */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
/* Create a new thread, starting with execution of START-ROUTINE
   getting passed ARG.  Creation attributed come from ATTR.  The new
   handle is stored in *NEWTHREAD.  */
extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
/* Terminate calling thread.
#pragma empty_line
   The registered cleanup handlers are called via exception handling
   so we cannot mark this function with __THROW.*/
extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));
#pragma empty_line
/* Make calling thread wait for termination of the thread TH.  The
   exit status of the thread is stored in *THREAD_RETURN, if THREAD_RETURN
   is not NULL.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pthread_join (pthread_t __th, void **__thread_return);
#pragma empty_line
#pragma empty_line
/* Check whether thread TH has terminated.  If yes return the status of
   the thread in *THREAD_RETURN, if THREAD_RETURN is not NULL.  */
extern int pthread_tryjoin_np (pthread_t __th, void **__thread_return) throw ();
#pragma empty_line
/* Make calling thread wait for termination of the thread TH, but only
   until TIMEOUT.  The exit status of the thread is stored in
   *THREAD_RETURN, if THREAD_RETURN is not NULL.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pthread_timedjoin_np (pthread_t __th, void **__thread_return,
     const struct timespec *__abstime);
#pragma empty_line
#pragma empty_line
/* Indicate that the thread TH is never to be joined with PTHREAD_JOIN.
   The resources of TH will therefore be freed immediately when it
   terminates, instead of waiting for another thread to perform PTHREAD_JOIN
   on it.  */
extern int pthread_detach (pthread_t __th) throw ();
#pragma empty_line
#pragma empty_line
/* Obtain the identifier of the current thread.  */
extern pthread_t pthread_self (void) throw () __attribute__ ((__const__));
#pragma empty_line
/* Compare two thread identifiers.  */
extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
/* Thread attribute handling.  */
#pragma empty_line
/* Initialize thread attribute *ATTR with default attributes
   (detachstate is PTHREAD_JOINABLE, scheduling policy is SCHED_OTHER,
    no user-provided stack).  */
extern int pthread_attr_init (pthread_attr_t *__attr) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy thread attribute *ATTR.  */
extern int pthread_attr_destroy (pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Get detach state attribute.  */
extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set detach state attribute.  */
extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Get the size of the guard area created for stack overflow protection.  */
extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the size of the guard area created for stack overflow protection.  */
extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return in *PARAM the scheduling parameters of *ATTR.  */
extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set scheduling parameters (priority, etc) in *ATTR according to PARAM.  */
extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Return in *POLICY the scheduling policy of *ATTR.  */
extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set scheduling policy in *ATTR according to POLICY.  */
extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Return in *INHERIT the scheduling inheritance mode of *ATTR.  */
extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set scheduling inheritance mode in *ATTR according to INHERIT.  */
extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return in *SCOPE the scheduling contention scope of *ATTR.  */
extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set scheduling contention scope in *ATTR according to SCOPE.  */
extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Return the previously set address for the stack.  */
extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     throw () __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));
#pragma empty_line
/* Set the starting address of the stack of the thread to be created.
   Depending on whether the stack grows up or down the value must either
   be higher or lower than all the address in the memory block.  The
   minimal size of the block must be PTHREAD_STACK_MIN.  */
extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     throw () __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));
#pragma empty_line
/* Return the currently used minimal stack size.  */
extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Add information about the minimum stack size needed for the thread
   to be started.  This size must never be less than PTHREAD_STACK_MIN
   and must also not exceed the system limits.  */
extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return the previously set address for the stack.  */
extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     throw () __attribute__ ((__nonnull__ (1, 2, 3)));
#pragma empty_line
/* The following two interfaces are intended to replace the last two.  They
   require setting the address as well as the size since only setting the
   address will make the implementation on some architectures impossible.  */
extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Thread created with attribute ATTR will be limited to run only on
   the processors represented in CPUSET.  */
extern int pthread_attr_setaffinity_np (pthread_attr_t *__attr,
     size_t __cpusetsize,
     const cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
/* Get bit set in CPUSET representing the processors threads created with
   ATTR can run on.  */
extern int pthread_attr_getaffinity_np (const pthread_attr_t *__attr,
     size_t __cpusetsize,
     cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
/* Get the default attributes used by pthread_create in this process.  */
extern int pthread_getattr_default_np (pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Set the default attributes to be used by pthread_create in this
   process.  */
extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Initialize thread attribute *ATTR with attributes corresponding to the
   already running thread TH.  It shall be called on uninitialized ATTR
   and destroyed with pthread_attr_destroy when no longer needed.  */
extern int pthread_getattr_np (pthread_t __th, pthread_attr_t *__attr)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Functions for scheduling control.  */
#pragma empty_line
/* Set the scheduling parameters for TARGET_THREAD according to POLICY
   and *PARAM.  */
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     throw () __attribute__ ((__nonnull__ (3)));
#pragma empty_line
/* Return in *POLICY and *PARAM the scheduling parameters for TARGET_THREAD. */
extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     throw () __attribute__ ((__nonnull__ (2, 3)));
#pragma empty_line
/* Set the scheduling priority for TARGET_THREAD.  */
extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get thread name visible in the kernel and its interfaces.  */
extern int pthread_getname_np (pthread_t __target_thread, char *__buf,
          size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
/* Set thread name visible in the kernel and its interfaces.  */
extern int pthread_setname_np (pthread_t __target_thread, const char *__name)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Determine level of concurrency.  */
extern int pthread_getconcurrency (void) throw ();
#pragma empty_line
/* Set new concurrency level to LEVEL.  */
extern int pthread_setconcurrency (int __level) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Yield the processor to another thread or process.
   This function is similar to the POSIX `sched_yield' function but
   might be differently implemented in the case of a m-on-n thread
   implementation.  */
extern int pthread_yield (void) throw ();
#pragma empty_line
#pragma empty_line
/* Limit specified thread TH to run only on the processors represented
   in CPUSET.  */
extern int pthread_setaffinity_np (pthread_t __th, size_t __cpusetsize,
       const cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (3)));
#pragma empty_line
/* Get bit set in CPUSET representing the processors TH can run on.  */
extern int pthread_getaffinity_np (pthread_t __th, size_t __cpusetsize,
       cpu_set_t *__cpuset)
     throw () __attribute__ ((__nonnull__ (3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Functions for handling initialization.  */
#pragma empty_line
/* Guarantee that the initialization function INIT_ROUTINE will be called
   only once, even if pthread_once is executed several times with the
   same ONCE_CONTROL argument. ONCE_CONTROL must point to a static or
   extern variable initialized to PTHREAD_ONCE_INIT.
#pragma empty_line
   The initialization functions might throw exception which is why
   this function is not marked with __THROW.  */
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Functions for handling cancellation.
#pragma empty_line
   Note that these functions are explicitly not marked to not throw an
   exception in C++ code.  If cancellation is implemented by unwinding
   this is necessary to have the compiler generate the unwind information.  */
#pragma empty_line
/* Set cancelability state of current thread to STATE, returning old
   state in *OLDSTATE if OLDSTATE is not NULL.  */
extern int pthread_setcancelstate (int __state, int *__oldstate);
#pragma empty_line
/* Set cancellation state of current thread to TYPE, returning the old
   type in *OLDTYPE if OLDTYPE is not NULL.  */
extern int pthread_setcanceltype (int __type, int *__oldtype);
#pragma empty_line
/* Cancel THREAD immediately or at the next possibility.  */
extern int pthread_cancel (pthread_t __th);
#pragma empty_line
/* Test for pending cancellation for the current thread and terminate
   the thread as per pthread_exit(PTHREAD_CANCELED) if it has been
   cancelled.  */
extern void pthread_testcancel (void);
#pragma empty_line
#pragma empty_line
/* Cancellation handling with integration into exception handling.  */
#pragma empty_line
typedef struct
{
  struct
  {
    __jmp_buf __cancel_jmp_buf;
    int __mask_was_saved;
  } __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
#pragma empty_line
/* No special attributes by default.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Structure to hold the cleanup handler information.  */
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
#pragma line 668 "/usr/include/pthread.h" 3 4
/* Install a cleanup handler: ROUTINE will be called with arguments ARG
   when the thread is canceled or calls pthread_exit.  ROUTINE will also
   be called with arguments ARG when the matching pthread_cleanup_pop
   is executed with non-zero EXECUTE argument.
#pragma empty_line
   pthread_cleanup_push and pthread_cleanup_pop are macros and must always
   be used in matching pairs at the same nesting level of braces.  */
#pragma line 691 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
                            ;
#pragma empty_line
/* Remove a cleanup handler installed by the matching pthread_cleanup_push.
   If EXECUTE is non-zero, the handler function is called. */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
                         ;
#pragma empty_line
#pragma empty_line
/* Install a cleanup handler as pthread_cleanup_push does, but also
   saves the current cancellation type and sets it to deferred
   cancellation.  */
#pragma line 726 "/usr/include/pthread.h" 3 4
extern void __pthread_register_cancel_defer (__pthread_unwind_buf_t *__buf)
                            ;
#pragma empty_line
/* Remove a cleanup handler as pthread_cleanup_pop does, but also
   restores the cancellation type that was in effect when the matching
   pthread_cleanup_push_defer was called.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern void __pthread_unregister_cancel_restore (__pthread_unwind_buf_t *__buf)
                         ;
#pragma empty_line
#pragma empty_line
/* Internal interface to initiate cleanup.  */
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
                             __attribute__ ((__noreturn__))
#pragma empty_line
     __attribute__ ((__weak__))
#pragma empty_line
     ;
#pragma empty_line
#pragma empty_line
/* Function used in the macros.  */
struct __jmp_buf_tag;
extern int __sigsetjmp (struct __jmp_buf_tag *__env, int __savemask) throw ();
#pragma empty_line
#pragma empty_line
/* Mutex handling.  */
#pragma empty_line
/* Initialize a mutex.  */
extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy a mutex.  */
extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Try locking a mutex.  */
extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Lock a mutex.  */
extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Wait until lock becomes available, or specified time passes. */
extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Unlock a mutex.  */
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Get the priority ceiling of MUTEX.  */
extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the priority ceiling of MUTEX to PRIOCEILING, return old
   priority ceiling value in *OLD_CEILING.  */
extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     throw () __attribute__ ((__nonnull__ (1, 3)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Declare the state protected by MUTEX as consistent.  */
extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
extern int pthread_mutex_consistent_np (pthread_mutex_t *__mutex)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Functions for handling mutex attributes.  */
#pragma empty_line
/* Initialize mutex attribute object ATTR with default attributes
   (kind is PTHREAD_MUTEX_TIMED_NP).  */
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy mutex attribute object ATTR.  */
extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Get the process-shared flag of the mutex attribute ATTR.  */
extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the process-shared flag of the mutex attribute ATTR.  */
extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return in *KIND the mutex kind attribute in *ATTR.  */
extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the mutex kind attribute in *ATTR to KIND (either PTHREAD_MUTEX_NORMAL,
   PTHREAD_MUTEX_RECURSIVE, PTHREAD_MUTEX_ERRORCHECK, or
   PTHREAD_MUTEX_DEFAULT).  */
extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return in *PROTOCOL the mutex protocol attribute in *ATTR.  */
extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the mutex protocol attribute in *ATTR to PROTOCOL (either
   PTHREAD_PRIO_NONE, PTHREAD_PRIO_INHERIT, or PTHREAD_PRIO_PROTECT).  */
extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Return in *PRIOCEILING the mutex prioceiling attribute in *ATTR.  */
extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the mutex prioceiling attribute in *ATTR to PRIOCEILING.  */
extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Get the robustness flag of the mutex attribute ATTR.  */
extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
extern int pthread_mutexattr_getrobust_np (const pthread_mutexattr_t *__attr,
        int *__robustness)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Set the robustness flag of the mutex attribute ATTR.  */
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
extern int pthread_mutexattr_setrobust_np (pthread_mutexattr_t *__attr,
        int __robustness)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Functions for handling read-write locks.  */
#pragma empty_line
/* Initialize read-write lock RWLOCK using attributes ATTR, or use
   the default values if later is NULL.  */
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy read-write lock RWLOCK.  */
extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Acquire read lock for RWLOCK.  */
extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Try to acquire read lock for RWLOCK.  */
extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Try to acquire read lock for RWLOCK or return after specfied time.  */
extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Acquire write lock for RWLOCK.  */
extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Try to acquire write lock for RWLOCK.  */
extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Try to acquire write lock for RWLOCK or return after specfied time.  */
extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Unlock RWLOCK.  */
extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Functions for handling read-write lock attributes.  */
#pragma empty_line
/* Initialize attribute object ATTR with default values.  */
extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy attribute object ATTR.  */
extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Return current setting of process-shared attribute of ATTR in PSHARED.  */
extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set process-shared attribute of ATTR to PSHARED.  */
extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Return current setting of reader/writer preference.  */
extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set reader/write preference.  */
extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Functions for handling conditional variables.  */
#pragma empty_line
/* Initialize condition variable COND using attributes ATTR, or use
   the default values if later is NULL.  */
extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy condition variable COND.  */
extern int pthread_cond_destroy (pthread_cond_t *__cond)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Wake up one thread waiting for condition variable COND.  */
extern int pthread_cond_signal (pthread_cond_t *__cond)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Wake up all threads waiting for condition variables COND.  */
extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Wait for condition variable COND to be signaled or broadcast.
   MUTEX is assumed to be locked before.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Wait for condition variable COND to be signaled or broadcast until
   ABSTIME.  MUTEX is assumed to be locked before.  ABSTIME is an
   absolute time specification; zero is the beginning of the epoch
   (00:00:00 GMT, January 1, 1970).
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));
#pragma empty_line
/* Functions for handling condition variable attributes.  */
#pragma empty_line
/* Initialize condition variable attribute ATTR.  */
extern int pthread_condattr_init (pthread_condattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy condition variable attribute ATTR.  */
extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Get the process-shared flag of the condition variable attribute ATTR.  */
extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the process-shared flag of the condition variable attribute ATTR.  */
extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Get the clock selected for the condition variable attribute ATTR.  */
extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the clock selected for the condition variable attribute ATTR.  */
extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Functions to handle spinlocks.  */
#pragma empty_line
/* Initialize the spinlock LOCK.  If PSHARED is nonzero the spinlock can
   be shared between different processes.  */
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy the spinlock LOCK.  */
extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Wait until spinlock LOCK is retrieved.  */
extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Try to lock spinlock LOCK.  */
extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Release spinlock LOCK.  */
extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Functions to handle barriers.  */
#pragma empty_line
/* Initialize BARRIER with the attributes in ATTR.  The barrier is
   opened when COUNT waiters arrived.  */
extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy a previously dynamically initialized barrier BARRIER.  */
extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Wait on barrier BARRIER.  */
extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Initialize barrier attribute ATTR.  */
extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy previously dynamically initialized barrier attribute ATTR.  */
extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Get the process-shared flag of the barrier attribute ATTR.  */
extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Set the process-shared flag of the barrier attribute ATTR.  */
extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Functions for handling thread-specific data.  */
#pragma empty_line
/* Create a key value identifying a location in the thread-specific
   data area.  Each thread maintains a distinct thread-specific data
   area.  DESTR_FUNCTION, if non-NULL, is called with the value
   associated to that key when the key is destroyed.
   DESTR_FUNCTION is not called if the value associated is NULL when
   the key is destroyed.  */
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Destroy KEY.  */
extern int pthread_key_delete (pthread_key_t __key) throw ();
#pragma empty_line
/* Return current value of the thread-specific data slot identified by KEY.  */
extern void *pthread_getspecific (pthread_key_t __key) throw ();
#pragma empty_line
/* Store POINTER in the thread-specific data slot identified by KEY. */
extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer) throw () ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get ID of CPU-time clock for thread THREAD_ID.  */
extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Install handlers to be called when a new process is created with FORK.
   The PREPARE handler is called in the parent process just before performing
   FORK. The PARENT handler is called in the parent process just after FORK.
   The CHILD handler is called in the child process.  Each of the three
   handlers can be NULL, meaning that no handler needs to be called at that
   point.
   PTHREAD_ATFORK can be called several times, in which case the PREPARE
   handlers are called in LIFO order (last added with PTHREAD_ATFORK,
   first called before FORK), and the PARENT and CHILD handlers are called
   in FIFO (first added, first called).  */
#pragma empty_line
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) throw ();
#pragma line 1170 "/usr/include/pthread.h" 3 4
}
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 2 3
#pragma line 1 "/usr/include/unistd.h" 1 3 4
/* Copyright (C) 1991-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
/*
 *	POSIX Standard: 2.10 Symbolic Constants		<unistd.h>
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern "C" {
#pragma empty_line
/* These may be used to determine what facilities are present at compile time.
   Their values can be obtained at run time from `sysconf'.  */
#pragma empty_line
#pragma empty_line
/* POSIX Standard approved as ISO/IEC 9945-1 as of September 2008.  */
#pragma line 49 "/usr/include/unistd.h" 3 4
/* These are not #ifdef __USE_POSIX2 because they are
   in the theoretically application-owned namespace.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The utilities on GNU systems also correspond to this version.  */
#pragma line 66 "/usr/include/unistd.h" 3 4
/* The utilities on GNU systems also correspond to this version.  */
#pragma empty_line
#pragma empty_line
/* If defined, the implementation supports the
   C Language Bindings Option.  */
#pragma empty_line
#pragma empty_line
/* If defined, the implementation supports the
   C Language Development Utilities Option.  */
#pragma empty_line
#pragma empty_line
/* If defined, the implementation supports the
   Software Development Utilities Option.  */
#pragma empty_line
#pragma empty_line
/* If defined, the implementation supports the
   creation of locales with the localedef utility.  */
#pragma empty_line
#pragma empty_line
/* X/Open version number to which the library conforms.  It is selectable.  */
#pragma line 96 "/usr/include/unistd.h" 3 4
/* Commands and utilities from XPG4 are available.  */
#pragma empty_line
#pragma empty_line
/* We are compatible with the old published standards as well.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The X/Open Unix extensions are available.  */
#pragma empty_line
#pragma empty_line
/* Encryption is present.  */
#pragma empty_line
#pragma empty_line
/* The enhanced internationalization capabilities according to XPG4.2
   are present.  */
#pragma empty_line
#pragma empty_line
/* The legacy interfaces are also available.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get values of POSIX options:
#pragma empty_line
   If these symbols are defined, the corresponding features are
   always available.  If not, they may be available sometimes.
   The current values can be obtained with `sysconf'.
#pragma empty_line
   _POSIX_JOB_CONTROL		Job control is supported.
   _POSIX_SAVED_IDS		Processes have a saved set-user-ID
				and a saved set-group-ID.
   _POSIX_REALTIME_SIGNALS	Real-time, queued signals are supported.
   _POSIX_PRIORITY_SCHEDULING	Priority scheduling is supported.
   _POSIX_TIMERS		POSIX.4 clocks and timers are supported.
   _POSIX_ASYNCHRONOUS_IO	Asynchronous I/O is supported.
   _POSIX_PRIORITIZED_IO	Prioritized asynchronous I/O is supported.
   _POSIX_SYNCHRONIZED_IO	Synchronizing file data is supported.
   _POSIX_FSYNC			The fsync function is present.
   _POSIX_MAPPED_FILES		Mapping of files to memory is supported.
   _POSIX_MEMLOCK		Locking of all memory is supported.
   _POSIX_MEMLOCK_RANGE		Locking of ranges of memory is supported.
   _POSIX_MEMORY_PROTECTION	Setting of memory protections is supported.
   _POSIX_MESSAGE_PASSING	POSIX.4 message queues are supported.
   _POSIX_SEMAPHORES		POSIX.4 counting semaphores are supported.
   _POSIX_SHARED_MEMORY_OBJECTS	POSIX.4 shared memory objects are supported.
   _POSIX_THREADS		POSIX.1c pthreads are supported.
   _POSIX_THREAD_ATTR_STACKADDR	Thread stack address attribute option supported.
   _POSIX_THREAD_ATTR_STACKSIZE	Thread stack size attribute option supported.
   _POSIX_THREAD_SAFE_FUNCTIONS	Thread-safe functions are supported.
   _POSIX_THREAD_PRIORITY_SCHEDULING
				POSIX.1c thread execution scheduling supported.
   _POSIX_THREAD_PRIO_INHERIT	Thread priority inheritance option supported.
   _POSIX_THREAD_PRIO_PROTECT	Thread priority protection option supported.
   _POSIX_THREAD_PROCESS_SHARED	Process-shared synchronization supported.
   _POSIX_PII			Protocol-independent interfaces are supported.
   _POSIX_PII_XTI		XTI protocol-indep. interfaces are supported.
   _POSIX_PII_SOCKET		Socket protocol-indep. interfaces are supported.
   _POSIX_PII_INTERNET		Internet family of protocols supported.
   _POSIX_PII_INTERNET_STREAM	Connection-mode Internet protocol supported.
   _POSIX_PII_INTERNET_DGRAM	Connectionless Internet protocol supported.
   _POSIX_PII_OSI		ISO/OSI family of protocols supported.
   _POSIX_PII_OSI_COTS		Connection-mode ISO/OSI service supported.
   _POSIX_PII_OSI_CLTS		Connectionless ISO/OSI service supported.
   _POSIX_POLL			Implementation supports `poll' function.
   _POSIX_SELECT		Implementation supports `select' and `pselect'.
#pragma empty_line
   _XOPEN_REALTIME		X/Open realtime support is available.
   _XOPEN_REALTIME_THREADS	X/Open realtime thread support is available.
   _XOPEN_SHM			Shared memory interface according to XPG4.2.
#pragma empty_line
   _XBS5_ILP32_OFF32		Implementation provides environment with 32-bit
				int, long, pointer, and off_t types.
   _XBS5_ILP32_OFFBIG		Implementation provides environment with 32-bit
				int, long, and pointer and off_t with at least
				64 bits.
   _XBS5_LP64_OFF64		Implementation provides environment with 32-bit
				int, and 64-bit long, pointer, and off_t types.
   _XBS5_LPBIG_OFFBIG		Implementation provides environment with at
				least 32 bits int and long, pointer, and off_t
				with at least 64 bits.
#pragma empty_line
   If any of these symbols is defined as -1, the corresponding option is not
   true for any file.  If any is defined as other than -1, the corresponding
   option is true for all files.  If a symbol is not defined at all, the value
   for a specific file can be obtained from `pathconf' and `fpathconf'.
#pragma empty_line
   _POSIX_CHOWN_RESTRICTED	Only the super user can use `chown' to change
				the owner of a file.  `chown' can only be used
				to change the group ID of a file to a group of
				which the calling process is a member.
   _POSIX_NO_TRUNC		Pathname components longer than
				NAME_MAX generate an error.
   _POSIX_VDISABLE		If defined, if the value of an element of the
				`c_cc' member of `struct termios' is
				_POSIX_VDISABLE, no character will have the
				effect associated with that element.
   _POSIX_SYNC_IO		Synchronous I/O may be performed.
   _POSIX_ASYNC_IO		Asynchronous I/O may be performed.
   _POSIX_PRIO_IO		Prioritized Asynchronous I/O may be performed.
#pragma empty_line
   Support for the Large File Support interface is not generally available.
   If it is available the following constants are defined to one.
   _LFS64_LARGEFILE		Low-level I/O supports large files.
   _LFS64_STDIO			Standard I/O supports large files.
   */
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
/* Define POSIX options for Linux.
   Copyright (C) 1996-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public License as
   published by the Free Software Foundation; either version 2.1 of the
   License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; see the file COPYING.LIB.  If
   not, see <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Job control is supported.  */
#pragma empty_line
#pragma empty_line
/* Processes have a saved set-user-ID and a saved set-group-ID.  */
#pragma empty_line
#pragma empty_line
/* Priority scheduling is supported.  */
#pragma empty_line
#pragma empty_line
/* Synchronizing file data is supported.  */
#pragma empty_line
#pragma empty_line
/* The fsync function is present.  */
#pragma empty_line
#pragma empty_line
/* Mapping of files to memory is supported.  */
#pragma empty_line
#pragma empty_line
/* Locking of all memory is supported.  */
#pragma empty_line
#pragma empty_line
/* Locking of ranges of memory is supported.  */
#pragma empty_line
#pragma empty_line
/* Setting of memory protections is supported.  */
#pragma empty_line
#pragma empty_line
/* Some filesystems allow all users to change file ownership.  */
#pragma empty_line
#pragma empty_line
/* `c_cc' member of 'struct termios' structure can be disabled by
   using the value _POSIX_VDISABLE.  */
#pragma empty_line
#pragma empty_line
/* Filenames are not silently truncated.  */
#pragma empty_line
#pragma empty_line
/* X/Open realtime support is available.  */
#pragma empty_line
#pragma empty_line
/* X/Open thread realtime support is available.  */
#pragma empty_line
#pragma empty_line
/* XPG4.2 shared memory is supported.  */
#pragma empty_line
#pragma empty_line
/* Tell we have POSIX threads.  */
#pragma empty_line
#pragma empty_line
/* We have the reentrant functions described in POSIX.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* We provide priority scheduling for threads.  */
#pragma empty_line
#pragma empty_line
/* We support user-defined stack sizes.  */
#pragma empty_line
#pragma empty_line
/* We support user-defined stacks.  */
#pragma empty_line
#pragma empty_line
/* We support priority inheritence.  */
#pragma empty_line
#pragma empty_line
/* We support priority protection, though only for non-robust
   mutexes.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* We support priority inheritence for robust mutexes.  */
#pragma empty_line
#pragma empty_line
/* We do not support priority protection for robust mutexes.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* We support POSIX.1b semaphores.  */
#pragma empty_line
#pragma empty_line
/* Real-time signals are supported.  */
#pragma empty_line
#pragma empty_line
/* We support asynchronous I/O.  */
#pragma empty_line
#pragma empty_line
/* Alternative name for Unix98.  */
#pragma empty_line
/* Support for prioritization is also available.  */
#pragma empty_line
#pragma empty_line
/* The LFS support in asynchronous I/O is also available.  */
#pragma empty_line
#pragma empty_line
/* The rest of the LFS is also available.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* POSIX shared memory objects are implemented.  */
#pragma empty_line
#pragma empty_line
/* CPU-time clocks support needs to be checked at runtime.  */
#pragma empty_line
#pragma empty_line
/* Clock support in threads must be also checked at runtime.  */
#pragma empty_line
#pragma empty_line
/* GNU libc provides regular expression handling.  */
#pragma empty_line
#pragma empty_line
/* Reader/Writer locks are available.  */
#pragma empty_line
#pragma empty_line
/* We have a POSIX shell.  */
#pragma empty_line
#pragma empty_line
/* We support the Timeouts option.  */
#pragma empty_line
#pragma empty_line
/* We support spinlocks.  */
#pragma empty_line
#pragma empty_line
/* The `spawn' function family is supported.  */
#pragma empty_line
#pragma empty_line
/* We have POSIX timers.  */
#pragma empty_line
#pragma empty_line
/* The barrier functions are available.  */
#pragma empty_line
#pragma empty_line
/* POSIX message queues are available.  */
#pragma empty_line
#pragma empty_line
/* Thread process-shared synchronization is supported.  */
#pragma empty_line
#pragma empty_line
/* The monotonic clock might be available.  */
#pragma empty_line
#pragma empty_line
/* The clock selection interfaces are available.  */
#pragma empty_line
#pragma empty_line
/* Advisory information interfaces are available.  */
#pragma empty_line
#pragma empty_line
/* IPv6 support is available.  */
#pragma empty_line
#pragma empty_line
/* Raw socket support is available.  */
#pragma empty_line
#pragma empty_line
/* We have at least one terminal.  */
#pragma empty_line
#pragma empty_line
/* Neither process nor thread sporadic server interfaces is available.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* trace.h is not available.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Typed memory objects are not available.  */
#pragma line 203 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
/* Get the environment definitions from Unix98.  */
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
/* Copyright (C) 1999-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
/* Determine the wordsize from the preprocessor defines.  */
#pragma line 11 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 3 4
/* Both x86-64 and x32 use the 64-bit system call interface.  */
#pragma line 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
#pragma empty_line
/* This header should define the following symbols under the described
   situations.  A value `1' means that the model is always supported,
   `-1' means it is never supported.  Undefined means it cannot be
   statically decided.
#pragma empty_line
   _POSIX_V7_ILP32_OFF32   32bit int, long, pointers, and off_t type
   _POSIX_V7_ILP32_OFFBIG  32bit int, long, and pointers and larger off_t type
#pragma empty_line
   _POSIX_V7_LP64_OFF32	   64bit long and pointers and 32bit off_t type
   _POSIX_V7_LPBIG_OFFBIG  64bit long and pointers and large off_t type
#pragma empty_line
   The macros _POSIX_V6_ILP32_OFF32, _POSIX_V6_ILP32_OFFBIG,
   _POSIX_V6_LP64_OFF32, _POSIX_V6_LPBIG_OFFBIG, _XBS5_ILP32_OFF32,
   _XBS5_ILP32_OFFBIG, _XBS5_LP64_OFF32, and _XBS5_LPBIG_OFFBIG were
   used in previous versions of the Unix standard and are available
   only for compatibility.
*/
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Environments with 32-bit wide pointers are optionally provided.
   Therefore following macros aren't defined:
   # undef _POSIX_V7_ILP32_OFF32
   # undef _POSIX_V7_ILP32_OFFBIG
   # undef _POSIX_V6_ILP32_OFF32
   # undef _POSIX_V6_ILP32_OFFBIG
   # undef _XBS5_ILP32_OFF32
   # undef _XBS5_ILP32_OFFBIG
   and users need to check at runtime.  */
#pragma empty_line
/* We also have no use (for now) for an environment with bigger pointers
   and offsets.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* By default we have 64-bit wide `long int', pointers and `off_t'.  */
#pragma line 207 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
#pragma empty_line
/* Standard file descriptors.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* All functions that are not declared anywhere else.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __ssize_t ssize_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
/*===---- stddef.h - Basic type definitions --------------------------------===
 *
 * Copyright (c) 2008 Eli Friedman
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 *
 *===-----------------------------------------------------------------------===
 */
#pragma line 56 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
/* Some C libraries expect to see a wint_t here. Others (notably MinGW) will use
__WINT_TYPE__ directly; accommodate both by requiring __need_wint_t */
#pragma line 227 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
#pragma empty_line
/* The Single Unix specification says that some more types are
   available here.  */
#pragma empty_line
typedef __gid_t gid_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __uid_t uid_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __off_t off_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __off64_t off64_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __useconds_t useconds_t;
#pragma line 267 "/usr/include/unistd.h" 3 4
typedef __intptr_t intptr_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef __socklen_t socklen_t;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Values for the second argument to access.
   These may be OR'd together.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Test for access to NAME using the real UID and real GID.  */
extern int access (const char *__name, int __type) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Test for access to NAME using the effective UID and GID
   (as normal file operations use).  */
extern int euidaccess (const char *__name, int __type)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* An alias for `euidaccess', used by some other systems.  */
extern int eaccess (const char *__name, int __type)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Test for access to FILE relative to the directory FD is open on.
   If AT_EACCESS is set in FLAG, then use effective IDs like `eaccess',
   otherwise use real IDs like `access'.  */
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     throw () __attribute__ ((__nonnull__ (2))) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Values for the WHENCE argument to lseek.  */
#pragma line 321 "/usr/include/unistd.h" 3 4
/* Old BSD names for the same constants; just for compatibility.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Move FD's file position to OFFSET bytes from the
   beginning of the file (if WHENCE is SEEK_SET),
   the current position (if WHENCE is SEEK_CUR),
   or the end of the file (if WHENCE is SEEK_END).
   Return the new file position.  */
#pragma empty_line
extern __off_t lseek (int __fd, __off_t __offset, int __whence) throw ();
#pragma line 345 "/usr/include/unistd.h" 3 4
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     throw ();
#pragma empty_line
#pragma empty_line
/* Close the file descriptor FD.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int close (int __fd);
#pragma empty_line
/* Read NBYTES into BUF from FD.  Return the
   number read, -1 for errors or 0 for EOF.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) /* Ignore */;
#pragma empty_line
/* Write N bytes of BUF to FD.  Return the number written, or -1.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t write (int __fd, const void *__buf, size_t __n) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Read NBYTES into BUF from FD at the given position OFFSET without
   changing the file pointer.  Return the number read, -1 for errors
   or 0 for EOF.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) /* Ignore */;
#pragma empty_line
/* Write N bytes of BUF to FD at the given position OFFSET without
   changing the file pointer.  Return the number written, or -1.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) /* Ignore */;
#pragma line 401 "/usr/include/unistd.h" 3 4
/* Read NBYTES into BUF from FD at the given position OFFSET without
   changing the file pointer.  Return the number read, -1 for errors
   or 0 for EOF.  */
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) /* Ignore */;
/* Write N bytes of BUF to FD at the given position OFFSET without
   changing the file pointer.  Return the number written, or -1.  */
extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Create a one-way communication channel (pipe).
   If successful, two file descriptors are stored in PIPEDES;
   bytes written on PIPEDES[1] can be read from PIPEDES[0].
   Returns 0 if successful, -1 if not.  */
extern int pipe (int __pipedes[2]) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Same as pipe but apply flags passed in FLAGS to the new file
   descriptors.  */
extern int pipe2 (int __pipedes[2], int __flags) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Schedule an alarm.  In SECONDS seconds, the process will get a SIGALRM.
   If SECONDS is zero, any currently scheduled alarm will be cancelled.
   The function returns the number of seconds remaining until the last
   alarm scheduled would have signaled, or zero if there wasn't one.
   There is no return value to indicate an error, but you can set `errno'
   to 0 and check its value after calling `alarm', and this might tell you.
   The signal may come late due to processor scheduling.  */
extern unsigned int alarm (unsigned int __seconds) throw ();
#pragma empty_line
/* Make the process sleep for SECONDS seconds, or until a signal arrives
   and is not ignored.  The function returns the number of seconds less
   than SECONDS which it actually slept (thus zero if it slept the full time).
   If a signal handler does a `longjmp' or modifies the handling of the
   SIGALRM signal while inside `sleep' call, the handling of the SIGALRM
   signal afterwards is undefined.  There is no return value to indicate
   error, but if `sleep' returns SECONDS, it probably didn't work.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern unsigned int sleep (unsigned int __seconds);
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set an alarm to go off (generating a SIGALRM signal) in VALUE
   microseconds.  If INTERVAL is nonzero, when the alarm goes off, the
   timer is reset to go off every INTERVAL microseconds thereafter.
   Returns the number of microseconds remaining before the alarm.  */
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     throw ();
#pragma empty_line
/* Sleep USECONDS microseconds, or until a signal arrives that is not blocked
   or ignored.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int usleep (__useconds_t __useconds);
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Suspend the process until a signal arrives.
   This always returns -1 and sets `errno' to EINTR.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int pause (void);
#pragma empty_line
#pragma empty_line
/* Change the owner and group of FILE.  */
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Change the owner and group of the file that FD is open on.  */
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Change owner and group of FILE, if it is a symbolic
   link the ownership of the symbolic link is changed.  */
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Change the owner and group of FILE relative to the directory FD is open
   on.  */
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     throw () __attribute__ ((__nonnull__ (2))) /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Change the process's working directory to PATH.  */
extern int chdir (const char *__path) throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Change the process's working directory to the one FD is open on.  */
extern int fchdir (int __fd) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Get the pathname of the current working directory,
   and put it in SIZE bytes of BUF.  Returns NULL if the
   directory couldn't be determined or SIZE was too small.
   If successful, returns BUF.  In GNU, if BUF is NULL,
   an array is allocated with `malloc'; the array is SIZE
   bytes long, unless SIZE == 0, in which case it is as
   big as necessary.  */
extern char *getcwd (char *__buf, size_t __size) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Return a malloc'd string containing the current directory name.
   If the environment variable `PWD' is set, and its value is correct,
   that value is used.  */
extern char *get_current_dir_name (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Put the absolute pathname of the current working directory in BUF.
   If successful, return BUF.  If not, put an error message in
   BUF and return NULL.  BUF should be at least PATH_MAX bytes long.  */
extern char *getwd (char *__buf)
     throw () __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Duplicate FD, returning a new file descriptor on the same file.  */
extern int dup (int __fd) throw () /* Ignore */;
#pragma empty_line
/* Duplicate FD to FD2, closing FD2 and making it open on the same file.  */
extern int dup2 (int __fd, int __fd2) throw ();
#pragma empty_line
#pragma empty_line
/* Duplicate FD to FD2, closing FD2 and making it open on the same
   file while setting flags according to FLAGS.  */
extern int dup3 (int __fd, int __fd2, int __flags) throw ();
#pragma empty_line
#pragma empty_line
/* NULL-terminated array of "NAME=VALUE" environment variables.  */
extern char **__environ;
#pragma empty_line
extern char **environ;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Replace the current process, executing PATH with arguments ARGV and
   environment ENVP.  ARGV and ENVP are terminated by NULL pointers.  */
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Execute the file FD refers to, overlaying the running program image.
   ARGV and ENVP are passed to the new program, as for `execve'.  */
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Execute PATH with arguments ARGV and environment from `environ'.  */
extern int execv (const char *__path, char *const __argv[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Execute PATH with all arguments after PATH until a NULL pointer,
   and the argument after that for environment.  */
extern int execle (const char *__path, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Execute PATH with all arguments after PATH until
   a NULL pointer and environment from `environ'.  */
extern int execl (const char *__path, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Execute FILE, searching in the `PATH' environment variable if it contains
   no slashes, with arguments ARGV and environment from `environ'.  */
extern int execvp (const char *__file, char *const __argv[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Execute FILE, searching in the `PATH' environment variable if
   it contains no slashes, with all arguments after FILE until a
   NULL pointer and environment from `environ'.  */
extern int execlp (const char *__file, const char *__arg, ...)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
/* Execute FILE, searching in the `PATH' environment variable if it contains
   no slashes, with arguments ARGV and environment from `environ'.  */
extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Add INC to priority of the current process.  */
extern int nice (int __inc) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Terminate program execution with the low-order 8 bits of STATUS.  */
extern void _exit (int __status) __attribute__ ((__noreturn__));
#pragma empty_line
#pragma empty_line
/* Get the `_PC_*' symbols for the NAME argument to `pathconf' and `fpathconf';
   the `_SC_*' symbols for the NAME argument to `sysconf';
   and the `_CS_*' symbols for the NAME argument to `confstr'.  */
#pragma empty_line
#pragma line 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
/* `sysconf', `pathconf', and `confstr' NAME values.  Generic version.
   Copyright (C) 1993-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Values for the NAME argument to `pathconf' and `fpathconf'.  */
enum
  {
    _PC_LINK_MAX,
#pragma empty_line
    _PC_MAX_CANON,
#pragma empty_line
    _PC_MAX_INPUT,
#pragma empty_line
    _PC_NAME_MAX,
#pragma empty_line
    _PC_PATH_MAX,
#pragma empty_line
    _PC_PIPE_BUF,
#pragma empty_line
    _PC_CHOWN_RESTRICTED,
#pragma empty_line
    _PC_NO_TRUNC,
#pragma empty_line
    _PC_VDISABLE,
#pragma empty_line
    _PC_SYNC_IO,
#pragma empty_line
    _PC_ASYNC_IO,
#pragma empty_line
    _PC_PRIO_IO,
#pragma empty_line
    _PC_SOCK_MAXBUF,
#pragma empty_line
    _PC_FILESIZEBITS,
#pragma empty_line
    _PC_REC_INCR_XFER_SIZE,
#pragma empty_line
    _PC_REC_MAX_XFER_SIZE,
#pragma empty_line
    _PC_REC_MIN_XFER_SIZE,
#pragma empty_line
    _PC_REC_XFER_ALIGN,
#pragma empty_line
    _PC_ALLOC_SIZE_MIN,
#pragma empty_line
    _PC_SYMLINK_MAX,
#pragma empty_line
    _PC_2_SYMLINKS
#pragma empty_line
  };
#pragma empty_line
/* Values for the argument to `sysconf'.  */
enum
  {
    _SC_ARG_MAX,
#pragma empty_line
    _SC_CHILD_MAX,
#pragma empty_line
    _SC_CLK_TCK,
#pragma empty_line
    _SC_NGROUPS_MAX,
#pragma empty_line
    _SC_OPEN_MAX,
#pragma empty_line
    _SC_STREAM_MAX,
#pragma empty_line
    _SC_TZNAME_MAX,
#pragma empty_line
    _SC_JOB_CONTROL,
#pragma empty_line
    _SC_SAVED_IDS,
#pragma empty_line
    _SC_REALTIME_SIGNALS,
#pragma empty_line
    _SC_PRIORITY_SCHEDULING,
#pragma empty_line
    _SC_TIMERS,
#pragma empty_line
    _SC_ASYNCHRONOUS_IO,
#pragma empty_line
    _SC_PRIORITIZED_IO,
#pragma empty_line
    _SC_SYNCHRONIZED_IO,
#pragma empty_line
    _SC_FSYNC,
#pragma empty_line
    _SC_MAPPED_FILES,
#pragma empty_line
    _SC_MEMLOCK,
#pragma empty_line
    _SC_MEMLOCK_RANGE,
#pragma empty_line
    _SC_MEMORY_PROTECTION,
#pragma empty_line
    _SC_MESSAGE_PASSING,
#pragma empty_line
    _SC_SEMAPHORES,
#pragma empty_line
    _SC_SHARED_MEMORY_OBJECTS,
#pragma empty_line
    _SC_AIO_LISTIO_MAX,
#pragma empty_line
    _SC_AIO_MAX,
#pragma empty_line
    _SC_AIO_PRIO_DELTA_MAX,
#pragma empty_line
    _SC_DELAYTIMER_MAX,
#pragma empty_line
    _SC_MQ_OPEN_MAX,
#pragma empty_line
    _SC_MQ_PRIO_MAX,
#pragma empty_line
    _SC_VERSION,
#pragma empty_line
    _SC_PAGESIZE,
#pragma empty_line
#pragma empty_line
    _SC_RTSIG_MAX,
#pragma empty_line
    _SC_SEM_NSEMS_MAX,
#pragma empty_line
    _SC_SEM_VALUE_MAX,
#pragma empty_line
    _SC_SIGQUEUE_MAX,
#pragma empty_line
    _SC_TIMER_MAX,
#pragma empty_line
#pragma empty_line
    /* Values for the argument to `sysconf'
       corresponding to _POSIX2_* symbols.  */
    _SC_BC_BASE_MAX,
#pragma empty_line
    _SC_BC_DIM_MAX,
#pragma empty_line
    _SC_BC_SCALE_MAX,
#pragma empty_line
    _SC_BC_STRING_MAX,
#pragma empty_line
    _SC_COLL_WEIGHTS_MAX,
#pragma empty_line
    _SC_EQUIV_CLASS_MAX,
#pragma empty_line
    _SC_EXPR_NEST_MAX,
#pragma empty_line
    _SC_LINE_MAX,
#pragma empty_line
    _SC_RE_DUP_MAX,
#pragma empty_line
    _SC_CHARCLASS_NAME_MAX,
#pragma empty_line
#pragma empty_line
    _SC_2_VERSION,
#pragma empty_line
    _SC_2_C_BIND,
#pragma empty_line
    _SC_2_C_DEV,
#pragma empty_line
    _SC_2_FORT_DEV,
#pragma empty_line
    _SC_2_FORT_RUN,
#pragma empty_line
    _SC_2_SW_DEV,
#pragma empty_line
    _SC_2_LOCALEDEF,
#pragma empty_line
#pragma empty_line
    _SC_PII,
#pragma empty_line
    _SC_PII_XTI,
#pragma empty_line
    _SC_PII_SOCKET,
#pragma empty_line
    _SC_PII_INTERNET,
#pragma empty_line
    _SC_PII_OSI,
#pragma empty_line
    _SC_POLL,
#pragma empty_line
    _SC_SELECT,
#pragma empty_line
    _SC_UIO_MAXIOV,
#pragma empty_line
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
#pragma empty_line
    _SC_PII_INTERNET_STREAM,
#pragma empty_line
    _SC_PII_INTERNET_DGRAM,
#pragma empty_line
    _SC_PII_OSI_COTS,
#pragma empty_line
    _SC_PII_OSI_CLTS,
#pragma empty_line
    _SC_PII_OSI_M,
#pragma empty_line
    _SC_T_IOV_MAX,
#pragma empty_line
#pragma empty_line
    /* Values according to POSIX 1003.1c (POSIX threads).  */
    _SC_THREADS,
#pragma empty_line
    _SC_THREAD_SAFE_FUNCTIONS,
#pragma empty_line
    _SC_GETGR_R_SIZE_MAX,
#pragma empty_line
    _SC_GETPW_R_SIZE_MAX,
#pragma empty_line
    _SC_LOGIN_NAME_MAX,
#pragma empty_line
    _SC_TTY_NAME_MAX,
#pragma empty_line
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
#pragma empty_line
    _SC_THREAD_KEYS_MAX,
#pragma empty_line
    _SC_THREAD_STACK_MIN,
#pragma empty_line
    _SC_THREAD_THREADS_MAX,
#pragma empty_line
    _SC_THREAD_ATTR_STACKADDR,
#pragma empty_line
    _SC_THREAD_ATTR_STACKSIZE,
#pragma empty_line
    _SC_THREAD_PRIORITY_SCHEDULING,
#pragma empty_line
    _SC_THREAD_PRIO_INHERIT,
#pragma empty_line
    _SC_THREAD_PRIO_PROTECT,
#pragma empty_line
    _SC_THREAD_PROCESS_SHARED,
#pragma empty_line
#pragma empty_line
    _SC_NPROCESSORS_CONF,
#pragma empty_line
    _SC_NPROCESSORS_ONLN,
#pragma empty_line
    _SC_PHYS_PAGES,
#pragma empty_line
    _SC_AVPHYS_PAGES,
#pragma empty_line
    _SC_ATEXIT_MAX,
#pragma empty_line
    _SC_PASS_MAX,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_VERSION,
#pragma empty_line
    _SC_XOPEN_XCU_VERSION,
#pragma empty_line
    _SC_XOPEN_UNIX,
#pragma empty_line
    _SC_XOPEN_CRYPT,
#pragma empty_line
    _SC_XOPEN_ENH_I18N,
#pragma empty_line
    _SC_XOPEN_SHM,
#pragma empty_line
#pragma empty_line
    _SC_2_CHAR_TERM,
#pragma empty_line
    _SC_2_C_VERSION,
#pragma empty_line
    _SC_2_UPE,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_XPG2,
#pragma empty_line
    _SC_XOPEN_XPG3,
#pragma empty_line
    _SC_XOPEN_XPG4,
#pragma empty_line
#pragma empty_line
    _SC_CHAR_BIT,
#pragma empty_line
    _SC_CHAR_MAX,
#pragma empty_line
    _SC_CHAR_MIN,
#pragma empty_line
    _SC_INT_MAX,
#pragma empty_line
    _SC_INT_MIN,
#pragma empty_line
    _SC_LONG_BIT,
#pragma empty_line
    _SC_WORD_BIT,
#pragma empty_line
    _SC_MB_LEN_MAX,
#pragma empty_line
    _SC_NZERO,
#pragma empty_line
    _SC_SSIZE_MAX,
#pragma empty_line
    _SC_SCHAR_MAX,
#pragma empty_line
    _SC_SCHAR_MIN,
#pragma empty_line
    _SC_SHRT_MAX,
#pragma empty_line
    _SC_SHRT_MIN,
#pragma empty_line
    _SC_UCHAR_MAX,
#pragma empty_line
    _SC_UINT_MAX,
#pragma empty_line
    _SC_ULONG_MAX,
#pragma empty_line
    _SC_USHRT_MAX,
#pragma empty_line
#pragma empty_line
    _SC_NL_ARGMAX,
#pragma empty_line
    _SC_NL_LANGMAX,
#pragma empty_line
    _SC_NL_MSGMAX,
#pragma empty_line
    _SC_NL_NMAX,
#pragma empty_line
    _SC_NL_SETMAX,
#pragma empty_line
    _SC_NL_TEXTMAX,
#pragma empty_line
#pragma empty_line
    _SC_XBS5_ILP32_OFF32,
#pragma empty_line
    _SC_XBS5_ILP32_OFFBIG,
#pragma empty_line
    _SC_XBS5_LP64_OFF64,
#pragma empty_line
    _SC_XBS5_LPBIG_OFFBIG,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_LEGACY,
#pragma empty_line
    _SC_XOPEN_REALTIME,
#pragma empty_line
    _SC_XOPEN_REALTIME_THREADS,
#pragma empty_line
#pragma empty_line
    _SC_ADVISORY_INFO,
#pragma empty_line
    _SC_BARRIERS,
#pragma empty_line
    _SC_BASE,
#pragma empty_line
    _SC_C_LANG_SUPPORT,
#pragma empty_line
    _SC_C_LANG_SUPPORT_R,
#pragma empty_line
    _SC_CLOCK_SELECTION,
#pragma empty_line
    _SC_CPUTIME,
#pragma empty_line
    _SC_THREAD_CPUTIME,
#pragma empty_line
    _SC_DEVICE_IO,
#pragma empty_line
    _SC_DEVICE_SPECIFIC,
#pragma empty_line
    _SC_DEVICE_SPECIFIC_R,
#pragma empty_line
    _SC_FD_MGMT,
#pragma empty_line
    _SC_FIFO,
#pragma empty_line
    _SC_PIPE,
#pragma empty_line
    _SC_FILE_ATTRIBUTES,
#pragma empty_line
    _SC_FILE_LOCKING,
#pragma empty_line
    _SC_FILE_SYSTEM,
#pragma empty_line
    _SC_MONOTONIC_CLOCK,
#pragma empty_line
    _SC_MULTI_PROCESS,
#pragma empty_line
    _SC_SINGLE_PROCESS,
#pragma empty_line
    _SC_NETWORKING,
#pragma empty_line
    _SC_READER_WRITER_LOCKS,
#pragma empty_line
    _SC_SPIN_LOCKS,
#pragma empty_line
    _SC_REGEXP,
#pragma empty_line
    _SC_REGEX_VERSION,
#pragma empty_line
    _SC_SHELL,
#pragma empty_line
    _SC_SIGNALS,
#pragma empty_line
    _SC_SPAWN,
#pragma empty_line
    _SC_SPORADIC_SERVER,
#pragma empty_line
    _SC_THREAD_SPORADIC_SERVER,
#pragma empty_line
    _SC_SYSTEM_DATABASE,
#pragma empty_line
    _SC_SYSTEM_DATABASE_R,
#pragma empty_line
    _SC_TIMEOUTS,
#pragma empty_line
    _SC_TYPED_MEMORY_OBJECTS,
#pragma empty_line
    _SC_USER_GROUPS,
#pragma empty_line
    _SC_USER_GROUPS_R,
#pragma empty_line
    _SC_2_PBS,
#pragma empty_line
    _SC_2_PBS_ACCOUNTING,
#pragma empty_line
    _SC_2_PBS_LOCATE,
#pragma empty_line
    _SC_2_PBS_MESSAGE,
#pragma empty_line
    _SC_2_PBS_TRACK,
#pragma empty_line
    _SC_SYMLOOP_MAX,
#pragma empty_line
    _SC_STREAMS,
#pragma empty_line
    _SC_2_PBS_CHECKPOINT,
#pragma empty_line
#pragma empty_line
    _SC_V6_ILP32_OFF32,
#pragma empty_line
    _SC_V6_ILP32_OFFBIG,
#pragma empty_line
    _SC_V6_LP64_OFF64,
#pragma empty_line
    _SC_V6_LPBIG_OFFBIG,
#pragma empty_line
#pragma empty_line
    _SC_HOST_NAME_MAX,
#pragma empty_line
    _SC_TRACE,
#pragma empty_line
    _SC_TRACE_EVENT_FILTER,
#pragma empty_line
    _SC_TRACE_INHERIT,
#pragma empty_line
    _SC_TRACE_LOG,
#pragma empty_line
#pragma empty_line
    _SC_LEVEL1_ICACHE_SIZE,
#pragma empty_line
    _SC_LEVEL1_ICACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL1_ICACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL1_DCACHE_SIZE,
#pragma empty_line
    _SC_LEVEL1_DCACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL1_DCACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL2_CACHE_SIZE,
#pragma empty_line
    _SC_LEVEL2_CACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL2_CACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL3_CACHE_SIZE,
#pragma empty_line
    _SC_LEVEL3_CACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL3_CACHE_LINESIZE,
#pragma empty_line
    _SC_LEVEL4_CACHE_SIZE,
#pragma empty_line
    _SC_LEVEL4_CACHE_ASSOC,
#pragma empty_line
    _SC_LEVEL4_CACHE_LINESIZE,
#pragma empty_line
    /* Leave room here, maybe we need a few more cache levels some day.  */
#pragma empty_line
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
#pragma empty_line
    _SC_RAW_SOCKETS,
#pragma empty_line
#pragma empty_line
    _SC_V7_ILP32_OFF32,
#pragma empty_line
    _SC_V7_ILP32_OFFBIG,
#pragma empty_line
    _SC_V7_LP64_OFF64,
#pragma empty_line
    _SC_V7_LPBIG_OFFBIG,
#pragma empty_line
#pragma empty_line
    _SC_SS_REPL_MAX,
#pragma empty_line
#pragma empty_line
    _SC_TRACE_EVENT_NAME_MAX,
#pragma empty_line
    _SC_TRACE_NAME_MAX,
#pragma empty_line
    _SC_TRACE_SYS_MAX,
#pragma empty_line
    _SC_TRACE_USER_EVENT_MAX,
#pragma empty_line
#pragma empty_line
    _SC_XOPEN_STREAMS,
#pragma empty_line
#pragma empty_line
    _SC_THREAD_ROBUST_PRIO_INHERIT,
#pragma empty_line
    _SC_THREAD_ROBUST_PRIO_PROTECT
#pragma empty_line
  };
#pragma empty_line
/* Values for the NAME argument to `confstr'.  */
enum
  {
    _CS_PATH, /* The default search path.  */
#pragma empty_line
#pragma empty_line
    _CS_V6_WIDTH_RESTRICTED_ENVS,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _CS_GNU_LIBC_VERSION,
#pragma empty_line
    _CS_GNU_LIBPTHREAD_VERSION,
#pragma empty_line
#pragma empty_line
    _CS_V5_WIDTH_RESTRICTED_ENVS,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _CS_V7_WIDTH_RESTRICTED_ENVS,
#pragma empty_line
#pragma empty_line
#pragma empty_line
    _CS_LFS_CFLAGS = 1000,
#pragma empty_line
    _CS_LFS_LDFLAGS,
#pragma empty_line
    _CS_LFS_LIBS,
#pragma empty_line
    _CS_LFS_LINTFLAGS,
#pragma empty_line
    _CS_LFS64_CFLAGS,
#pragma empty_line
    _CS_LFS64_LDFLAGS,
#pragma empty_line
    _CS_LFS64_LIBS,
#pragma empty_line
    _CS_LFS64_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_LIBS,
#pragma empty_line
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_LIBS,
#pragma empty_line
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_CFLAGS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_LDFLAGS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_LIBS,
#pragma empty_line
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
#pragma empty_line
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_LIBS,
#pragma empty_line
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_LIBS,
#pragma empty_line
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
#pragma empty_line
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
#pragma empty_line
#pragma empty_line
    _CS_V6_ENV,
#pragma empty_line
    _CS_V7_ENV
#pragma empty_line
  };
#pragma line 610 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
/* Get file-specific configuration information about PATH.  */
extern long int pathconf (const char *__path, int __name)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
/* Get file-specific configuration about descriptor FD.  */
extern long int fpathconf (int __fd, int __name) throw ();
#pragma empty_line
/* Get the value of the system variable NAME.  */
extern long int sysconf (int __name) throw ();
#pragma empty_line
#pragma empty_line
/* Get the value of the string-valued system variable NAME.  */
extern size_t confstr (int __name, char *__buf, size_t __len) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get the process ID of the calling process.  */
extern __pid_t getpid (void) throw ();
#pragma empty_line
/* Get the process ID of the calling process's parent.  */
extern __pid_t getppid (void) throw ();
#pragma empty_line
/* Get the process group ID of the calling process.  */
extern __pid_t getpgrp (void) throw ();
#pragma empty_line
/* Get the process group ID of process PID.  */
extern __pid_t __getpgid (__pid_t __pid) throw ();
#pragma empty_line
extern __pid_t getpgid (__pid_t __pid) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set the process group ID of the process matching PID to PGID.
   If PID is zero, the current process's process group ID is set.
   If PGID is zero, the process ID of the process is used.  */
extern int setpgid (__pid_t __pid, __pid_t __pgid) throw ();
#pragma empty_line
#pragma empty_line
/* Both System V and BSD have `setpgrp' functions, but with different
   calling conventions.  The BSD function is the same as POSIX.1 `setpgid'
   (above).  The System V function takes no arguments and puts the calling
   process in its on group like `setpgid (0, 0)'.
#pragma empty_line
   New programs should always use `setpgid' instead.
#pragma empty_line
   GNU provides the POSIX.1 function.  */
#pragma empty_line
/* Set the process group ID of the calling process to its own PID.
   This is exactly the same as `setpgid (0, 0)'.  */
extern int setpgrp (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Create a new session with the calling process as its leader.
   The process group IDs of the session and the calling process
   are set to the process ID of the calling process, which is returned.  */
extern __pid_t setsid (void) throw ();
#pragma empty_line
#pragma empty_line
/* Return the session ID of the given process.  */
extern __pid_t getsid (__pid_t __pid) throw ();
#pragma empty_line
#pragma empty_line
/* Get the real user ID of the calling process.  */
extern __uid_t getuid (void) throw ();
#pragma empty_line
/* Get the effective user ID of the calling process.  */
extern __uid_t geteuid (void) throw ();
#pragma empty_line
/* Get the real group ID of the calling process.  */
extern __gid_t getgid (void) throw ();
#pragma empty_line
/* Get the effective group ID of the calling process.  */
extern __gid_t getegid (void) throw ();
#pragma empty_line
/* If SIZE is zero, return the number of supplementary groups
   the calling process is in.  Otherwise, fill in the group IDs
   of its supplementary groups in LIST and return the number written.  */
extern int getgroups (int __size, __gid_t __list[]) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Return nonzero iff the calling process is in group GID.  */
extern int group_member (__gid_t __gid) throw ();
#pragma empty_line
#pragma empty_line
/* Set the user ID of the calling process to UID.
   If the calling process is the super-user, set the real
   and effective user IDs, and the saved set-user-ID to UID;
   if not, the effective user ID is set to UID.  */
extern int setuid (__uid_t __uid) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Set the real user ID of the calling process to RUID,
   and the effective user ID of the calling process to EUID.  */
extern int setreuid (__uid_t __ruid, __uid_t __euid) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set the effective user ID of the calling process to UID.  */
extern int seteuid (__uid_t __uid) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Set the group ID of the calling process to GID.
   If the calling process is the super-user, set the real
   and effective group IDs, and the saved set-group-ID to GID;
   if not, the effective group ID is set to GID.  */
extern int setgid (__gid_t __gid) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Set the real group ID of the calling process to RGID,
   and the effective group ID of the calling process to EGID.  */
extern int setregid (__gid_t __rgid, __gid_t __egid) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set the effective group ID of the calling process to GID.  */
extern int setegid (__gid_t __gid) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Fetch the real user ID, effective user ID, and saved-set user ID,
   of the calling process.  */
extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     throw ();
#pragma empty_line
/* Fetch the real group ID, effective group ID, and saved-set group ID,
   of the calling process.  */
extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     throw ();
#pragma empty_line
/* Set the real user ID, effective user ID, and saved-set user ID,
   of the calling process to RUID, EUID, and SUID, respectively.  */
extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     throw () /* Ignore */;
#pragma empty_line
/* Set the real group ID, effective group ID, and saved-set group ID,
   of the calling process to RGID, EGID, and SGID, respectively.  */
extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Clone the calling process, creating an exact copy.
   Return -1 for errors, 0 to the new process,
   and the process ID of the new process to the old process.  */
extern __pid_t fork (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Clone the calling process, but without copying the whole address space.
   The calling process is suspended until the new process exits or is
   replaced by a call to `execve'.  Return -1 for errors, 0 to the new process,
   and the process ID of the new process to the old process.  */
extern __pid_t vfork (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return the pathname of the terminal FD is open on, or NULL on errors.
   The returned storage is good only until the next call to this function.  */
extern char *ttyname (int __fd) throw ();
#pragma empty_line
/* Store at most BUFLEN characters of the pathname of the terminal FD is
   open on in BUF.  Return 0 on success, otherwise an error number.  */
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     throw () __attribute__ ((__nonnull__ (2))) /* Ignore */;
#pragma empty_line
/* Return 1 if FD is a valid descriptor associated
   with a terminal, zero if not.  */
extern int isatty (int __fd) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return the index into the active-logins file (utmp) for
   the controlling terminal.  */
extern int ttyslot (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Make a link to FROM named TO.  */
extern int link (const char *__from, const char *__to)
     throw () __attribute__ ((__nonnull__ (1, 2))) /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Like link but relative paths in TO and FROM are interpreted relative
   to FROMFD and TOFD respectively.  */
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     throw () __attribute__ ((__nonnull__ (2, 4))) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Make a symbolic link to FROM named TO.  */
extern int symlink (const char *__from, const char *__to)
     throw () __attribute__ ((__nonnull__ (1, 2))) /* Ignore */;
#pragma empty_line
/* Read the contents of the symbolic link PATH into no more than
   LEN bytes of BUF.  The contents are not null-terminated.
   Returns the number of characters read, or -1 for errors.  */
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (1, 2))) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Like symlink but a relative path in TO is interpreted relative to TOFD.  */
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) throw () __attribute__ ((__nonnull__ (1, 3))) /* Ignore */;
#pragma empty_line
/* Like readlink but a relative PATH is interpreted relative to FD.  */
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     throw () __attribute__ ((__nonnull__ (2, 3))) /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Remove the link NAME.  */
extern int unlink (const char *__name) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Remove the link NAME relative to FD.  */
extern int unlinkat (int __fd, const char *__name, int __flag)
     throw () __attribute__ ((__nonnull__ (2)));
#pragma empty_line
#pragma empty_line
/* Remove the directory PATH.  */
extern int rmdir (const char *__path) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Return the foreground process group ID of FD.  */
extern __pid_t tcgetpgrp (int __fd) throw ();
#pragma empty_line
/* Set the foreground process group ID of FD set PGRP_ID.  */
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) throw ();
#pragma empty_line
#pragma empty_line
/* Return the login name of the user.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern char *getlogin (void);
#pragma empty_line
/* Return at most NAME_LEN characters of the login name of the user in NAME.
   If it cannot be determined or some other error occurred, return the error
   code.  Otherwise return 0.
#pragma empty_line
   This function is a possible cancellation point and therefore not
   marked with __THROW.  */
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set the login name returned by `getlogin'.  */
extern int setlogin (const char *__name) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Get definitions and prototypes for functions to process the
   arguments in ARGV (ARGC of them, minus the program name) for
   options given in OPTS.  */
#pragma empty_line
#pragma empty_line
#pragma line 1 "/usr/include/getopt.h" 1 3 4
/* Declarations for getopt.
   Copyright (C) 1989-2014 Free Software Foundation, Inc.
   This file is part of the GNU C Library.
#pragma empty_line
   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.
#pragma empty_line
   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.
#pragma empty_line
   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* If __GNU_LIBRARY__ is not already defined, either we are being used
   standalone, or this is the first header included in the source file.
   If we are being used with glibc, we need to include <features.h>, but
   that does not exist if we are standalone.  So: if __GNU_LIBRARY__ is
   not defined, include <ctype.h>, which will pull in <features.h> for us
   if it's from glibc.  (Why ctype.h?  It's guaranteed to exist and it
   doesn't flood the namespace with stuff the way some other headers do.)  */
#pragma line 48 "/usr/include/getopt.h" 3 4
extern "C" {
#pragma empty_line
#pragma empty_line
/* For communication from `getopt' to the caller.
   When `getopt' finds an option that takes an argument,
   the argument value is returned here.
   Also, when `ordering' is RETURN_IN_ORDER,
   each non-option ARGV-element is returned here.  */
#pragma empty_line
extern char *optarg;
#pragma empty_line
/* Index in ARGV of the next element to be scanned.
   This is used for communication to and from the caller
   and for communication between successive calls to `getopt'.
#pragma empty_line
   On entry to `getopt', zero means this is the first call; initialize.
#pragma empty_line
   When `getopt' returns -1, this is the index of the first of the
   non-option elements that the caller should itself scan.
#pragma empty_line
   Otherwise, `optind' communicates from one call to the next
   how much of ARGV has been scanned so far.  */
#pragma empty_line
extern int optind;
#pragma empty_line
/* Callers store zero here to inhibit the error message `getopt' prints
   for unrecognized options.  */
#pragma empty_line
extern int opterr;
#pragma empty_line
/* Set to an option character which was unrecognized.  */
#pragma empty_line
extern int optopt;
#pragma line 122 "/usr/include/getopt.h" 3 4
/* Get definitions and prototypes for functions to process the
   arguments in ARGV (ARGC of them, minus the program name) for
   options given in OPTS.
#pragma empty_line
   Return the option character from OPTS just read.  Return -1 when
   there are no more options.  For unrecognized options, or options
   missing arguments, `optopt' is set to the option letter, and '?' is
   returned.
#pragma empty_line
   The OPTS string is a list of characters which are recognized option
   letters, optionally followed by colons, specifying that that letter
   takes an argument, to be placed in `optarg'.
#pragma empty_line
   If a letter in OPTS is followed by two colons, its argument is
   optional.  This behavior is specific to the GNU `getopt'.
#pragma empty_line
   The argument `--' causes premature termination of argument
   scanning, explicitly telling `getopt' that there are no more
   options.
#pragma empty_line
   If OPTS begins with `--', then non-option arguments are treated as
   arguments to the option '\0'.  This behavior is specific to the GNU
   `getopt'.  */
#pragma empty_line
#pragma empty_line
/* Many other libraries have conflicting prototypes for getopt, with
   differences in the consts, in stdlib.h.  To avoid compilation
   errors, only prototype getopt for the GNU C library.  */
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       throw ();
#pragma line 185 "/usr/include/getopt.h" 3 4
}
#pragma empty_line
#pragma empty_line
/* Make sure we later can get all the definitions and declarations.  */
#pragma line 872 "/usr/include/unistd.h" 2 3 4
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Put the name of the current host in no more than LEN bytes of NAME.
   The result is null-terminated if LEN is large enough for the full
   name and the terminator.  */
extern int gethostname (char *__name, size_t __len) throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Set the name of the current host to NAME, which is LEN bytes long.
   This call is restricted to the super-user.  */
extern int sethostname (const char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
/* Set the current machine's Internet number to ID.
   This call is restricted to the super-user.  */
extern int sethostid (long int __id) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Get and set the NIS (aka YP) domain name, if any.
   Called just like `gethostname' and `sethostname'.
   The NIS domain name is usually the empty string when not using NIS.  */
extern int getdomainname (char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
extern int setdomainname (const char *__name, size_t __len)
     throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Revoke access permissions to all processes currently communicating
   with the control terminal, and then send a SIGHUP signal to the process
   group of the control terminal.  */
extern int vhangup (void) throw ();
#pragma empty_line
/* Revoke the access of all descriptors currently open on FILE.  */
extern int revoke (const char *__file) throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
#pragma empty_line
/* Enable statistical profiling, writing samples of the PC into at most
   SIZE bytes of SAMPLE_BUFFER; every processor clock tick while profiling
   is enabled, the system examines the user PC and increments
   SAMPLE_BUFFER[((PC - OFFSET) / 2) * SCALE / 65536].  If SCALE is zero,
   disable profiling.  Returns zero on success, -1 on error.  */
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Turn accounting on if NAME is an existing file.  The system will then write
   a record for each process as it terminates, to this file.  If NAME is NULL,
   turn accounting off.  This call is restricted to the super-user.  */
extern int acct (const char *__name) throw ();
#pragma empty_line
#pragma empty_line
/* Successive calls return the shells listed in `/etc/shells'.  */
extern char *getusershell (void) throw ();
extern void endusershell (void) throw (); /* Discard cached info.  */
extern void setusershell (void) throw (); /* Rewind and re-read the file.  */
#pragma empty_line
#pragma empty_line
/* Put the program in the background, and dissociate from the controlling
   terminal.  If NOCHDIR is zero, do `chdir ("/")'.  If NOCLOSE is zero,
   redirects stdin, stdout, and stderr to /dev/null.  */
extern int daemon (int __nochdir, int __noclose) throw () /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Make PATH be the root directory (the starting point for absolute paths).
   This call is restricted to the super-user.  */
extern int chroot (const char *__path) throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
/* Prompt with PROMPT and read a string from the terminal without echoing.
   Uses /dev/tty if possible; otherwise stderr and stdin.  */
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Make all changes done to FD actually appear on disk.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
extern int fsync (int __fd);
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Make all changes done to all files on the file system associated
   with FD actually appear on disk.  */
extern int syncfs (int __fd) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return identifier for the current host.  */
extern long int gethostid (void);
#pragma empty_line
/* Make all changes done to all files actually appear on disk.  */
extern void sync (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Return the number of bytes in a page.  This is the system's page size,
   which is not necessarily the same as the hardware page size.  */
extern int getpagesize (void) throw () __attribute__ ((__const__));
#pragma empty_line
#pragma empty_line
/* Return the maximum number of file descriptors
   the current process could possibly have.  */
extern int getdtablesize (void) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Truncate FILE to LENGTH bytes.  */
#pragma empty_line
extern int truncate (const char *__file, __off_t __length)
     throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma line 1005 "/usr/include/unistd.h" 3 4
extern int truncate64 (const char *__file, __off64_t __length)
     throw () __attribute__ ((__nonnull__ (1))) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Truncate the file FD is open on to LENGTH bytes.  */
#pragma empty_line
extern int ftruncate (int __fd, __off_t __length) throw () /* Ignore */;
#pragma line 1026 "/usr/include/unistd.h" 3 4
extern int ftruncate64 (int __fd, __off64_t __length) throw () /* Ignore */;
#pragma line 1035 "/usr/include/unistd.h" 3 4
/* Set the end of accessible data space (aka "the break") to ADDR.
   Returns zero on success and -1 for errors (with errno set).  */
extern int brk (void *__addr) throw () /* Ignore */;
#pragma empty_line
/* Increase or decrease the end of accessible data space by DELTA bytes.
   If successful, returns the address the previous end of data space
   (i.e. the beginning of the new space, if DELTA > 0);
   returns (void *) -1 for errors (with errno set).  */
extern void *sbrk (intptr_t __delta) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Invoke `system call' number SYSNO, passing it the remaining arguments.
   This is completely system-dependent, and not often useful.
#pragma empty_line
   In Unix, `syscall' sets `errno' for all errors and most calls return -1
   for errors; in many systems you cannot pass arguments or get return
   values for all system calls (`pipe', `fork', and `getppid' typically
   among them).
#pragma empty_line
   In Mach, all system calls take normal arguments and always return an
   error code (zero for success).  */
extern long int syscall (long int __sysno, ...) throw ();
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* NOTE: These declarations also appear in <fcntl.h>; be sure to keep both
   files consistent.  Some systems have them there and some here, and some
   software depends on the macros being defined without including both.  */
#pragma empty_line
/* `lockf' is a simpler interface to the locking facilities of `fcntl'.
   LEN is always relative to the current file position.
   The CMD argument is one of the following.
#pragma empty_line
   This function is a cancellation point and therefore not marked with
   __THROW.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
extern int lockf (int __fd, int __cmd, __off_t __len) /* Ignore */;
#pragma line 1091 "/usr/include/unistd.h" 3 4
extern int lockf64 (int __fd, int __cmd, __off64_t __len) /* Ignore */;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Evaluate EXPRESSION, and repeat as long as it returns -1 with `errno'
   set to EINTR.  */
#pragma line 1110 "/usr/include/unistd.h" 3 4
/* Synchronize at least the data part of a file with the underlying
   media.  */
extern int fdatasync (int __fildes);
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* XPG4.2 specifies that prototypes for the encryption functions must
   be defined here.  */
#pragma empty_line
/* Encrypt at most 8 characters from KEY using salt to perturb DES.  */
extern char *crypt (const char *__key, const char *__salt)
     throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
/* Encrypt data in BLOCK in place if EDFLAG is zero; otherwise decrypt
   block in place.  */
extern void encrypt (char *__glibc_block, int __edflag)
     throw () __attribute__ ((__nonnull__ (1)));
#pragma empty_line
#pragma empty_line
/* Swab pairs bytes in the first N bytes of the area pointed to by
   FROM and copy the result to TO.  The value of TO must not be in the
   range [FROM - N + 1, FROM - 1].  If N is odd the first byte in FROM
   is without partner.  */
extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) throw () __attribute__ ((__nonnull__ (1, 2)));
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* The Single Unix specification demands this prototype to be here.
   It is also found in <stdio.h>.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
/* Define some macros helping to catch buffer overflows.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
}
#pragma line 43 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 2 3
#pragma empty_line
typedef pthread_t __gthread_t;
typedef pthread_key_t __gthread_key_t;
typedef pthread_once_t __gthread_once_t;
typedef pthread_mutex_t __gthread_mutex_t;
typedef pthread_mutex_t __gthread_recursive_mutex_t;
typedef pthread_cond_t __gthread_cond_t;
typedef struct timespec __gthread_time_t;
#pragma empty_line
/* POSIX like conditional variables are supported.  Please look at comments
   in gthr.h for details. */
#pragma line 81 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
/* Typically, __gthrw_foo is a weak reference to symbol foo.  */
#pragma empty_line
#pragma empty_line
/* On Tru64, /usr/include/pthread.h uses #pragma extern_prefix "__" to
   map a subset of the POSIX pthread API to mangled versions of their
   names.  */
#pragma line 118 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static __typeof(pthread_once) __gthrw_pthread_once __attribute__ ((__weakref__("pthread_once")));
static __typeof(pthread_getspecific) __gthrw_pthread_getspecific __attribute__ ((__weakref__("pthread_getspecific")));
static __typeof(pthread_setspecific) __gthrw_pthread_setspecific __attribute__ ((__weakref__("pthread_setspecific")));
#pragma empty_line
static __typeof(pthread_create) __gthrw_pthread_create __attribute__ ((__weakref__("pthread_create")));
static __typeof(pthread_join) __gthrw_pthread_join __attribute__ ((__weakref__("pthread_join")));
static __typeof(pthread_equal) __gthrw_pthread_equal __attribute__ ((__weakref__("pthread_equal")));
static __typeof(pthread_self) __gthrw_pthread_self __attribute__ ((__weakref__("pthread_self")));
static __typeof(pthread_detach) __gthrw_pthread_detach __attribute__ ((__weakref__("pthread_detach")));
#pragma empty_line
static __typeof(pthread_cancel) __gthrw_pthread_cancel __attribute__ ((__weakref__("pthread_cancel")));
#pragma empty_line
static __typeof(sched_yield) __gthrw_sched_yield __attribute__ ((__weakref__("sched_yield")));
#pragma empty_line
static __typeof(pthread_mutex_lock) __gthrw_pthread_mutex_lock __attribute__ ((__weakref__("pthread_mutex_lock")));
static __typeof(pthread_mutex_trylock) __gthrw_pthread_mutex_trylock __attribute__ ((__weakref__("pthread_mutex_trylock")));
#pragma empty_line
#pragma empty_line
static __typeof(pthread_mutex_timedlock) __gthrw_pthread_mutex_timedlock __attribute__ ((__weakref__("pthread_mutex_timedlock")));
#pragma empty_line
#pragma empty_line
static __typeof(pthread_mutex_unlock) __gthrw_pthread_mutex_unlock __attribute__ ((__weakref__("pthread_mutex_unlock")));
static __typeof(pthread_mutex_init) __gthrw_pthread_mutex_init __attribute__ ((__weakref__("pthread_mutex_init")));
static __typeof(pthread_mutex_destroy) __gthrw_pthread_mutex_destroy __attribute__ ((__weakref__("pthread_mutex_destroy")));
#pragma empty_line
static __typeof(pthread_cond_broadcast) __gthrw_pthread_cond_broadcast __attribute__ ((__weakref__("pthread_cond_broadcast")));
static __typeof(pthread_cond_signal) __gthrw_pthread_cond_signal __attribute__ ((__weakref__("pthread_cond_signal")));
static __typeof(pthread_cond_wait) __gthrw_pthread_cond_wait __attribute__ ((__weakref__("pthread_cond_wait")));
static __typeof(pthread_cond_timedwait) __gthrw_pthread_cond_timedwait __attribute__ ((__weakref__("pthread_cond_timedwait")));
static __typeof(pthread_cond_destroy) __gthrw_pthread_cond_destroy __attribute__ ((__weakref__("pthread_cond_destroy")));
#pragma empty_line
#pragma empty_line
static __typeof(pthread_key_create) __gthrw_pthread_key_create __attribute__ ((__weakref__("pthread_key_create")));
static __typeof(pthread_key_delete) __gthrw_pthread_key_delete __attribute__ ((__weakref__("pthread_key_delete")));
static __typeof(pthread_mutexattr_init) __gthrw_pthread_mutexattr_init __attribute__ ((__weakref__("pthread_mutexattr_init")));
static __typeof(pthread_mutexattr_settype) __gthrw_pthread_mutexattr_settype __attribute__ ((__weakref__("pthread_mutexattr_settype")));
static __typeof(pthread_mutexattr_destroy) __gthrw_pthread_mutexattr_destroy __attribute__ ((__weakref__("pthread_mutexattr_destroy")));
#pragma line 183 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
/* On Solaris 2.6 up to 9, the libc exposes a POSIX threads interface even if
   -pthreads is not specified.  The functions are dummies and most return an
   error value.  However pthread_once returns 0 without invoking the routine
   it is passed so we cannot pretend that the interface is active if -pthreads
   is not specified.  On Solaris 2.5.1, the interface is not exposed at all so
   we need to play the usual game with weak symbols.  On Solaris 10 and up, a
   working interface is always exposed.  On FreeBSD 6 and later, libc also
   exposes a dummy POSIX threads interface, similar to what Solaris 2.6 up
   to 9 does.  FreeBSD >= 700014 even provides a pthread_cancel stub in libc,
   which means the alternate __gthread_active_p below cannot be used there.  */
#pragma line 239 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static inline int
__gthread_active_p (void)
{
  static void *const __gthread_active_ptr
    = __extension__ (void *) &__gthrw_pthread_cancel;
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
  return __gthread_active_ptr != 0;
}
#pragma line 657 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static inline int
__gthread_create (__gthread_t *__threadid, void *(*__func) (void*),
    void *__args)
{
  return __gthrw_pthread_create (__threadid, __null, __func, __args);
}
#pragma empty_line
static inline int
__gthread_join (__gthread_t __threadid, void **__value_ptr)
{
  return __gthrw_pthread_join (__threadid, __value_ptr);
}
#pragma empty_line
static inline int
__gthread_detach (__gthread_t __threadid)
{
  return __gthrw_pthread_detach (__threadid);
}
#pragma empty_line
static inline int
__gthread_equal (__gthread_t __t1, __gthread_t __t2)
{
  return __gthrw_pthread_equal (__t1, __t2);
}
#pragma empty_line
static inline __gthread_t
__gthread_self (void)
{
  return __gthrw_pthread_self ();
}
#pragma empty_line
static inline int
__gthread_yield (void)
{
  return __gthrw_sched_yield ();
}
#pragma empty_line
static inline int
__gthread_once (__gthread_once_t *__once, void (*__func) (void))
{
  if (__gthread_active_p ())
    return __gthrw_pthread_once (__once, __func);
  else
    return -1;
}
#pragma empty_line
static inline int
__gthread_key_create (__gthread_key_t *__key, void (*__dtor) (void *))
{
  return __gthrw_pthread_key_create (__key, __dtor);
}
#pragma empty_line
static inline int
__gthread_key_delete (__gthread_key_t __key)
{
  return __gthrw_pthread_key_delete (__key);
}
#pragma empty_line
static inline void *
__gthread_getspecific (__gthread_key_t __key)
{
  return __gthrw_pthread_getspecific (__key);
}
#pragma empty_line
static inline int
__gthread_setspecific (__gthread_key_t __key, const void *__ptr)
{
  return __gthrw_pthread_setspecific (__key, __ptr);
}
#pragma empty_line
static inline int
__gthread_mutex_destroy (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_destroy (__mutex);
  else
    return 0;
}
#pragma empty_line
static inline int
__gthread_mutex_lock (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_lock (__mutex);
  else
    return 0;
}
#pragma empty_line
static inline int
__gthread_mutex_trylock (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_trylock (__mutex);
  else
    return 0;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_mutex_timedlock (__gthread_mutex_t *__mutex,
      const __gthread_time_t *__abs_timeout)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_timedlock (__mutex, __abs_timeout);
  else
    return 0;
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_mutex_unlock (__gthread_mutex_t *__mutex)
{
  if (__gthread_active_p ())
    return __gthrw_pthread_mutex_unlock (__mutex);
  else
    return 0;
}
#pragma line 800 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr-default.h" 3
static inline int
__gthread_recursive_mutex_lock (__gthread_recursive_mutex_t *__mutex)
{
  return __gthread_mutex_lock (__mutex);
}
#pragma empty_line
static inline int
__gthread_recursive_mutex_trylock (__gthread_recursive_mutex_t *__mutex)
{
  return __gthread_mutex_trylock (__mutex);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_recursive_mutex_timedlock (__gthread_recursive_mutex_t *__mutex,
         const __gthread_time_t *__abs_timeout)
{
  return __gthread_mutex_timedlock (__mutex, __abs_timeout);
}
#pragma empty_line
#pragma empty_line
#pragma empty_line
static inline int
__gthread_recursive_mutex_unlock (__gthread_recursive_mutex_t *__mutex)
{
  return __gthread_mutex_unlock (__mutex);
}
#pragma empty_line
static inline int
__gthread_cond_broadcast (__gthread_cond_t *__cond)
{
  return __gthrw_pthread_cond_broadcast (__cond);
}
#pragma empty_line
static inline int
__gthread_cond_signal (__gthread_cond_t *__cond)
{
  return __gthrw_pthread_cond_signal (__cond);
}
#pragma empty_line
static inline int
__gthread_cond_wait (__gthread_cond_t *__cond, __gthread_mutex_t *__mutex)
{
  return __gthrw_pthread_cond_wait (__cond, __mutex);
}
#pragma empty_line
static inline int
__gthread_cond_timedwait (__gthread_cond_t *__cond, __gthread_mutex_t *__mutex,
     const __gthread_time_t *__abs_timeout)
{
  return __gthrw_pthread_cond_timedwait (__cond, __mutex, __abs_timeout);
}
#pragma empty_line
static inline int
__gthread_cond_wait_recursive (__gthread_cond_t *__cond,
          __gthread_recursive_mutex_t *__mutex)
{
  return __gthread_cond_wait (__cond, __mutex);
}
#pragma empty_line
static inline int
__gthread_cond_timedwait_recursive (__gthread_cond_t *__cond,
        __gthread_recursive_mutex_t *__mutex,
        const __gthread_time_t *__abs_timeout)
{
  return __gthread_cond_timedwait (__cond, __mutex, __abs_timeout);
}
#pragma empty_line
static inline int
__gthread_cond_destroy (__gthread_cond_t* __cond)
{
  return __gthrw_pthread_cond_destroy (__cond);
}
#pragma line 171 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/gthr.h" 2 3
#pragma empty_line
/* Fallback to single thread definitions.  */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma GCC visibility pop
#pragma line 35 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/x86_64-unknown-linux-gnu/bits/atomic_word.h" 1 3
// Low-level type for atomic operations -*- C++ -*-
#pragma empty_line
// Copyright (C) 2004, 2009 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file atomic_word.h
 *  This file is a GNU extension to the Standard C++ Library.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
typedef int _Atomic_word;
#pragma empty_line
// Define these two macros using the appropriate memory barrier for the target.
// The commented out versions below are the defaults.
// See ia64/atomic_word.h for an alternative approach.
#pragma empty_line
// This one prevents loads from being hoisted across the barrier;
// in other words, this is a Load-Load acquire barrier.
// This is necessary iff TARGET_RELAXED_ORDERING is defined in tm.h.  
// #define _GLIBCXX_READ_MEM_BARRIER __asm __volatile ("":::"memory")
#pragma empty_line
// This one prevents stores from being sunk across the barrier; in other
// words, a Store-Store release barrier.
// #define _GLIBCXX_WRITE_MEM_BARRIER __asm __volatile ("":::"memory")
#pragma line 36 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 2 3
#pragma empty_line
namespace __gnu_cxx __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  // Functions for portable atomic access.
  // To abstract locking primitives across all thread policies, use:
  // __exchange_and_add_dispatch
  // __atomic_add_dispatch
#pragma empty_line
  static inline _Atomic_word
  __exchange_and_add(volatile _Atomic_word* __mem, int __val)
  { return __sync_fetch_and_add(__mem, __val); }
#pragma empty_line
  static inline void
  __atomic_add(volatile _Atomic_word* __mem, int __val)
  { __sync_fetch_and_add(__mem, __val); }
#pragma line 63 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/atomicity.h" 3
  static inline _Atomic_word
  __exchange_and_add_single(_Atomic_word* __mem, int __val)
  {
    _Atomic_word __result = *__mem;
    *__mem += __val;
    return __result;
  }
#pragma empty_line
  static inline void
  __atomic_add_single(_Atomic_word* __mem, int __val)
  { *__mem += __val; }
#pragma empty_line
  static inline _Atomic_word
  __attribute__ ((__unused__))
  __exchange_and_add_dispatch(_Atomic_word* __mem, int __val)
  {
#pragma empty_line
    if (__gthread_active_p())
      return __exchange_and_add(__mem, __val);
    else
      return __exchange_and_add_single(__mem, __val);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  }
#pragma empty_line
  static inline void
  __attribute__ ((__unused__))
  __atomic_add_dispatch(_Atomic_word* __mem, int __val)
  {
#pragma empty_line
    if (__gthread_active_p())
      __atomic_add(__mem, __val);
    else
      __atomic_add_single(__mem, __val);
#pragma empty_line
#pragma empty_line
#pragma empty_line
  }
#pragma empty_line
#pragma empty_line
} // namespace
#pragma empty_line
// Even if the CPU doesn't need a memory barrier, we need to ensure
// that the compiler doesn't reorder memory accesses across the
// barriers.
#pragma line 41 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 2 3
#pragma empty_line
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/initializer_list" 1 3
// std::initializer_list support -*- C++ -*-
#pragma empty_line
// Copyright (C) 2008, 2009, 2010 Free Software Foundation, Inc.
//
// This file is part of GCC.
//
// GCC is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// GCC is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file initializer_list
 *  This is a Standard C++ Library header.
 */
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 33 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/initializer_list" 3
#pragma line 43 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 2 3
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  /**
   *  @class basic_string basic_string.h <string>
   *  @brief  Managing sequences of characters and character-like objects.
   *
   *  @ingroup strings
   *  @ingroup sequences
   *
   *  Meets the requirements of a <a href="tables.html#65">container</a>, a
   *  <a href="tables.html#66">reversible container</a>, and a
   *  <a href="tables.html#67">sequence</a>.  Of the
   *  <a href="tables.html#68">optional sequence requirements</a>, only
   *  @c push_back, @c at, and @c %array access are supported.
   *
   *  @doctodo
   *
   *
   *  Documentation?  What's that?
   *  Nathan Myers <ncm@cantrip.org>.
   *
   *  A string looks like this:
   *
   *  @code
   *                                        [_Rep]
   *                                        _M_length
   *   [basic_string<char_type>]            _M_capacity
   *   _M_dataplus                          _M_refcount
   *   _M_p ---------------->               unnamed array of char_type
   *  @endcode
   *
   *  Where the _M_p points to the first character in the string, and
   *  you cast it to a pointer-to-_Rep and subtract 1 to get a
   *  pointer to the header.
   *
   *  This approach has the enormous advantage that a string object
   *  requires only one allocation.  All the ugliness is confined
   *  within a single %pair of inline functions, which each compile to
   *  a single @a add instruction: _Rep::_M_data(), and
   *  string::_M_rep(); and the allocation function which gets a
   *  block of raw bytes and with room enough and constructs a _Rep
   *  object at the front.
   *
   *  The reason you want _M_data pointing to the character %array and
   *  not the _Rep is so that the debugger can see the string
   *  contents. (Probably we should add a non-inline member to get
   *  the _Rep for the debugger to use, so users can check the actual
   *  string length.)
   *
   *  Note that the _Rep object is a POD so that you can have a
   *  static <em>empty string</em> _Rep object already @a constructed before
   *  static constructors have run.  The reference-count encoding is
   *  chosen so that a 0 indicates one reference, so you never try to
   *  destroy the empty-string _Rep object.
   *
   *  All but the last paragraph is considered pretty conventional
   *  for a C++ string implementation.
  */
  // 21.3  Template class basic_string
  template<typename _CharT, typename _Traits, typename _Alloc>
    class basic_string
    {
      typedef typename _Alloc::template rebind<_CharT>::other _CharT_alloc_type;
#pragma empty_line
      // Types:
    public:
      typedef _Traits traits_type;
      typedef typename _Traits::char_type value_type;
      typedef _Alloc allocator_type;
      typedef typename _CharT_alloc_type::size_type size_type;
      typedef typename _CharT_alloc_type::difference_type difference_type;
      typedef typename _CharT_alloc_type::reference reference;
      typedef typename _CharT_alloc_type::const_reference const_reference;
      typedef typename _CharT_alloc_type::pointer pointer;
      typedef typename _CharT_alloc_type::const_pointer const_pointer;
      typedef __gnu_cxx::__normal_iterator<pointer, basic_string> iterator;
      typedef __gnu_cxx::__normal_iterator<const_pointer, basic_string>
                                                            const_iterator;
      typedef std::reverse_iterator<const_iterator> const_reverse_iterator;
      typedef std::reverse_iterator<iterator> reverse_iterator;
#pragma empty_line
    private:
      // _Rep: string representation
      //   Invariants:
      //   1. String really contains _M_length + 1 characters: due to 21.3.4
      //      must be kept null-terminated.
      //   2. _M_capacity >= _M_length
      //      Allocated memory is always (_M_capacity + 1) * sizeof(_CharT).
      //   3. _M_refcount has three states:
      //      -1: leaked, one reference, no ref-copies allowed, non-const.
      //       0: one reference, non-const.
      //     n>0: n + 1 references, operations require a lock, const.
      //   4. All fields==0 is an empty string, given the extra storage
      //      beyond-the-end for a null terminator; thus, the shared
      //      empty string representation needs no constructor.
#pragma empty_line
      struct _Rep_base
      {
 size_type _M_length;
 size_type _M_capacity;
 _Atomic_word _M_refcount;
      };
#pragma empty_line
      struct _Rep : _Rep_base
      {
 // Types:
 typedef typename _Alloc::template rebind<char>::other _Raw_bytes_alloc;
#pragma empty_line
 // (Public) Data members:
#pragma empty_line
 // The maximum number of individual char_type elements of an
 // individual string is determined by _S_max_size. This is the
 // value that will be returned by max_size().  (Whereas npos
 // is the maximum number of bytes the allocator can allocate.)
 // If one was to divvy up the theoretical largest size string,
 // with a terminating character and m _CharT elements, it'd
 // look like this:
 // npos = sizeof(_Rep) + (m * sizeof(_CharT)) + sizeof(_CharT)
 // Solving for m:
 // m = ((npos - sizeof(_Rep))/sizeof(CharT)) - 1
 // In addition, this implementation quarters this amount.
 static const size_type _S_max_size;
 static const _CharT _S_terminal;
#pragma empty_line
 // The following storage is init'd to 0 by the linker, resulting
        // (carefully) in an empty string with one reference.
        static size_type _S_empty_rep_storage[];
#pragma empty_line
        static _Rep&
        _S_empty_rep()
        {
   // NB: Mild hack to avoid strict-aliasing warnings.  Note that
   // _S_empty_rep_storage is never modified and the punning should
   // be reasonably safe in this case.
   void* __p = reinterpret_cast<void*>(&_S_empty_rep_storage);
   return *reinterpret_cast<_Rep*>(__p);
 }
#pragma empty_line
        bool
 _M_is_leaked() const
        { return this->_M_refcount < 0; }
#pragma empty_line
        bool
 _M_is_shared() const
        { return this->_M_refcount > 0; }
#pragma empty_line
        void
 _M_set_leaked()
        { this->_M_refcount = -1; }
#pragma empty_line
        void
 _M_set_sharable()
        { this->_M_refcount = 0; }
#pragma empty_line
 void
 _M_set_length_and_sharable(size_type __n)
 {
#pragma empty_line
   if (__builtin_expect(this != &_S_empty_rep(), false))
#pragma empty_line
     {
       this->_M_set_sharable(); // One reference.
       this->_M_length = __n;
       traits_type::assign(this->_M_refdata()[__n], _S_terminal);
       // grrr. (per 21.3.4)
       // You cannot leave those LWG people alone for a second.
     }
 }
#pragma empty_line
 _CharT*
 _M_refdata() throw()
 { return reinterpret_cast<_CharT*>(this + 1); }
#pragma empty_line
 _CharT*
 _M_grab(const _Alloc& __alloc1, const _Alloc& __alloc2)
 {
   return (!_M_is_leaked() && __alloc1 == __alloc2)
           ? _M_refcopy() : _M_clone(__alloc1);
 }
#pragma empty_line
 // Create & Destroy
 static _Rep*
 _S_create(size_type, size_type, const _Alloc&);
#pragma empty_line
 void
 _M_dispose(const _Alloc& __a)
 {
#pragma empty_line
   if (__builtin_expect(this != &_S_empty_rep(), false))
#pragma empty_line
     {
       // Be race-detector-friendly.  For more info see bits/c++config.
                                                                  ;
       if (__gnu_cxx::__exchange_and_add_dispatch(&this->_M_refcount,
        -1) <= 0)
  {
                                                              ;
    _M_destroy(__a);
  }
     }
 } // XXX MT
#pragma empty_line
 void
 _M_destroy(const _Alloc&) throw();
#pragma empty_line
 _CharT*
 _M_refcopy() throw()
 {
#pragma empty_line
   if (__builtin_expect(this != &_S_empty_rep(), false))
#pragma empty_line
            __gnu_cxx::__atomic_add_dispatch(&this->_M_refcount, 1);
   return _M_refdata();
 } // XXX MT
#pragma empty_line
 _CharT*
 _M_clone(const _Alloc&, size_type __res = 0);
      };
#pragma empty_line
      // Use empty-base optimization: http://www.cantrip.org/emptyopt.html
      struct _Alloc_hider : _Alloc
      {
 _Alloc_hider(_CharT* __dat, const _Alloc& __a)
 : _Alloc(__a), _M_p(__dat) { }
#pragma empty_line
 _CharT* _M_p; // The actual data.
      };
#pragma empty_line
    public:
      // Data Members (public):
      // NB: This is an unsigned type, and thus represents the maximum
      // size that the allocator can hold.
      ///  Value returned by various member functions when they fail.
      static const size_type npos = static_cast<size_type>(-1);
#pragma empty_line
    private:
      // Data Members (private):
      mutable _Alloc_hider _M_dataplus;
#pragma empty_line
      _CharT*
      _M_data() const
      { return _M_dataplus._M_p; }
#pragma empty_line
      _CharT*
      _M_data(_CharT* __p)
      { return (_M_dataplus._M_p = __p); }
#pragma empty_line
      _Rep*
      _M_rep() const
      { return &((reinterpret_cast<_Rep*> (_M_data()))[-1]); }
#pragma empty_line
      // For the internal use we have functions similar to `begin'/`end'
      // but they do not call _M_leak.
      iterator
      _M_ibegin() const
      { return iterator(_M_data()); }
#pragma empty_line
      iterator
      _M_iend() const
      { return iterator(_M_data() + this->size()); }
#pragma empty_line
      void
      _M_leak() // for use in begin() & non-const op[]
      {
 if (!_M_rep()->_M_is_leaked())
   _M_leak_hard();
      }
#pragma empty_line
      size_type
      _M_check(size_type __pos, const char* __s) const
      {
 if (__pos > this->size())
   __throw_out_of_range((__s));
 return __pos;
      }
#pragma empty_line
      void
      _M_check_length(size_type __n1, size_type __n2, const char* __s) const
      {
 if (this->max_size() - (this->size() - __n1) < __n2)
   __throw_length_error((__s));
      }
#pragma empty_line
      // NB: _M_limit doesn't check for a bad __pos value.
      size_type
      _M_limit(size_type __pos, size_type __off) const
      {
 const bool __testoff = __off < this->size() - __pos;
 return __testoff ? __off : this->size() - __pos;
      }
#pragma empty_line
      // True if _Rep and source do not overlap.
      bool
      _M_disjunct(const _CharT* __s) const
      {
 return (less<const _CharT*>()(__s, _M_data())
  || less<const _CharT*>()(_M_data() + this->size(), __s));
      }
#pragma empty_line
      // When __n = 1 way faster than the general multichar
      // traits_type::copy/move/assign.
      static void
      _M_copy(_CharT* __d, const _CharT* __s, size_type __n)
      {
 if (__n == 1)
   traits_type::assign(*__d, *__s);
 else
   traits_type::copy(__d, __s, __n);
      }
#pragma empty_line
      static void
      _M_move(_CharT* __d, const _CharT* __s, size_type __n)
      {
 if (__n == 1)
   traits_type::assign(*__d, *__s);
 else
   traits_type::move(__d, __s, __n);
      }
#pragma empty_line
      static void
      _M_assign(_CharT* __d, size_type __n, _CharT __c)
      {
 if (__n == 1)
   traits_type::assign(*__d, __c);
 else
   traits_type::assign(__d, __n, __c);
      }
#pragma empty_line
      // _S_copy_chars is a separate template to permit specialization
      // to optimize for the common case of pointers as iterators.
      template<class _Iterator>
        static void
        _S_copy_chars(_CharT* __p, _Iterator __k1, _Iterator __k2)
        {
   for (; __k1 != __k2; ++__k1, ++__p)
     traits_type::assign(*__p, *__k1); // These types are off.
 }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, iterator __k1, iterator __k2)
      { _S_copy_chars(__p, __k1.base(), __k2.base()); }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, const_iterator __k1, const_iterator __k2)
      { _S_copy_chars(__p, __k1.base(), __k2.base()); }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, _CharT* __k1, _CharT* __k2)
      { _M_copy(__p, __k1, __k2 - __k1); }
#pragma empty_line
      static void
      _S_copy_chars(_CharT* __p, const _CharT* __k1, const _CharT* __k2)
      { _M_copy(__p, __k1, __k2 - __k1); }
#pragma empty_line
      static int
      _S_compare(size_type __n1, size_type __n2)
      {
 const difference_type __d = difference_type(__n1 - __n2);
#pragma empty_line
 if (__d > __gnu_cxx::__numeric_traits<int>::__max)
   return __gnu_cxx::__numeric_traits<int>::__max;
 else if (__d < __gnu_cxx::__numeric_traits<int>::__min)
   return __gnu_cxx::__numeric_traits<int>::__min;
 else
   return int(__d);
      }
#pragma empty_line
      void
      _M_mutate(size_type __pos, size_type __len1, size_type __len2);
#pragma empty_line
      void
      _M_leak_hard();
#pragma empty_line
      static _Rep&
      _S_empty_rep()
      { return _Rep::_S_empty_rep(); }
#pragma empty_line
    public:
      // Construct/copy/destroy:
      // NB: We overload ctors in some cases instead of using default
      // arguments, per 17.4.4.4 para. 2 item 2.
#pragma empty_line
      /**
       *  @brief  Default constructor creates an empty string.
       */
      basic_string()
#pragma empty_line
      : _M_dataplus(_S_empty_rep()._M_refdata(), _Alloc()) { }
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
      /**
       *  @brief  Construct an empty string using allocator @a a.
       */
      explicit
      basic_string(const _Alloc& __a);
#pragma empty_line
      // NB: per LWG issue 42, semantics different from IS:
      /**
       *  @brief  Construct string with copy of value of @a str.
       *  @param  str  Source string.
       */
      basic_string(const basic_string& __str);
      /**
       *  @brief  Construct string as copy of a substring.
       *  @param  str  Source string.
       *  @param  pos  Index of first character to copy from.
       *  @param  n  Number of characters to copy (default remainder).
       */
      basic_string(const basic_string& __str, size_type __pos,
     size_type __n = npos);
      /**
       *  @brief  Construct string as copy of a substring.
       *  @param  str  Source string.
       *  @param  pos  Index of first character to copy from.
       *  @param  n  Number of characters to copy.
       *  @param  a  Allocator to use.
       */
      basic_string(const basic_string& __str, size_type __pos,
     size_type __n, const _Alloc& __a);
#pragma empty_line
      /**
       *  @brief  Construct string initialized by a character %array.
       *  @param  s  Source character %array.
       *  @param  n  Number of characters to copy.
       *  @param  a  Allocator to use (default is default allocator).
       *
       *  NB: @a s must have at least @a n characters, &apos;\\0&apos;
       *  has no special meaning.
       */
      basic_string(const _CharT* __s, size_type __n,
     const _Alloc& __a = _Alloc());
      /**
       *  @brief  Construct string as copy of a C string.
       *  @param  s  Source C string.
       *  @param  a  Allocator to use (default is default allocator).
       */
      basic_string(const _CharT* __s, const _Alloc& __a = _Alloc());
      /**
       *  @brief  Construct string as multiple characters.
       *  @param  n  Number of characters.
       *  @param  c  Character to use.
       *  @param  a  Allocator to use (default is default allocator).
       */
      basic_string(size_type __n, _CharT __c, const _Alloc& __a = _Alloc());
#pragma line 519 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  @brief  Construct string as copy of a range.
       *  @param  beg  Start of range.
       *  @param  end  End of range.
       *  @param  a  Allocator to use (default is default allocator).
       */
      template<class _InputIterator>
        basic_string(_InputIterator __beg, _InputIterator __end,
       const _Alloc& __a = _Alloc());
#pragma empty_line
      /**
       *  @brief  Destroy the string instance.
       */
      ~basic_string()
      { _M_rep()->_M_dispose(this->get_allocator()); }
#pragma empty_line
      /**
       *  @brief  Assign the value of @a str to this string.
       *  @param  str  Source string.
       */
      basic_string&
      operator=(const basic_string& __str)
      { return this->assign(__str); }
#pragma empty_line
      /**
       *  @brief  Copy contents of @a s into this string.
       *  @param  s  Source null-terminated string.
       */
      basic_string&
      operator=(const _CharT* __s)
      { return this->assign(__s); }
#pragma empty_line
      /**
       *  @brief  Set value to string of length 1.
       *  @param  c  Source character.
       *
       *  Assigning to a character makes this string length 1 and
       *  (*this)[0] == @a c.
       */
      basic_string&
      operator=(_CharT __c)
      {
 this->assign(1, __c);
 return *this;
      }
#pragma line 593 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      // Iterators:
      /**
       *  Returns a read/write iterator that points to the first character in
       *  the %string.  Unshares the string.
       */
      iterator
      begin()
      {
 _M_leak();
 return iterator(_M_data());
      }
#pragma empty_line
      /**
       *  Returns a read-only (constant) iterator that points to the first
       *  character in the %string.
       */
      const_iterator
      begin() const
      { return const_iterator(_M_data()); }
#pragma empty_line
      /**
       *  Returns a read/write iterator that points one past the last
       *  character in the %string.  Unshares the string.
       */
      iterator
      end()
      {
 _M_leak();
 return iterator(_M_data() + this->size());
      }
#pragma empty_line
      /**
       *  Returns a read-only (constant) iterator that points one past the
       *  last character in the %string.
       */
      const_iterator
      end() const
      { return const_iterator(_M_data() + this->size()); }
#pragma empty_line
      /**
       *  Returns a read/write reverse iterator that points to the last
       *  character in the %string.  Iteration is done in reverse element
       *  order.  Unshares the string.
       */
      reverse_iterator
      rbegin()
      { return reverse_iterator(this->end()); }
#pragma empty_line
      /**
       *  Returns a read-only (constant) reverse iterator that points
       *  to the last character in the %string.  Iteration is done in
       *  reverse element order.
       */
      const_reverse_iterator
      rbegin() const
      { return const_reverse_iterator(this->end()); }
#pragma empty_line
      /**
       *  Returns a read/write reverse iterator that points to one before the
       *  first character in the %string.  Iteration is done in reverse
       *  element order.  Unshares the string.
       */
      reverse_iterator
      rend()
      { return reverse_iterator(this->begin()); }
#pragma empty_line
      /**
       *  Returns a read-only (constant) reverse iterator that points
       *  to one before the first character in the %string.  Iteration
       *  is done in reverse element order.
       */
      const_reverse_iterator
      rend() const
      { return const_reverse_iterator(this->begin()); }
#pragma line 704 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
    public:
      // Capacity:
      ///  Returns the number of characters in the string, not including any
      ///  null-termination.
      size_type
      size() const
      { return _M_rep()->_M_length; }
#pragma empty_line
      ///  Returns the number of characters in the string, not including any
      ///  null-termination.
      size_type
      length() const
      { return _M_rep()->_M_length; }
#pragma empty_line
      ///  Returns the size() of the largest possible %string.
      size_type
      max_size() const
      { return _Rep::_S_max_size; }
#pragma empty_line
      /**
       *  @brief  Resizes the %string to the specified number of characters.
       *  @param  n  Number of characters the %string should contain.
       *  @param  c  Character to fill any new elements.
       *
       *  This function will %resize the %string to the specified
       *  number of characters.  If the number is smaller than the
       *  %string's current size the %string is truncated, otherwise
       *  the %string is extended and new elements are %set to @a c.
       */
      void
      resize(size_type __n, _CharT __c);
#pragma empty_line
      /**
       *  @brief  Resizes the %string to the specified number of characters.
       *  @param  n  Number of characters the %string should contain.
       *
       *  This function will resize the %string to the specified length.  If
       *  the new size is smaller than the %string's current size the %string
       *  is truncated, otherwise the %string is extended and new characters
       *  are default-constructed.  For basic types such as char, this means
       *  setting them to 0.
       */
      void
      resize(size_type __n)
      { this->resize(__n, _CharT()); }
#pragma line 762 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  Returns the total number of characters that the %string can hold
       *  before needing to allocate more memory.
       */
      size_type
      capacity() const
      { return _M_rep()->_M_capacity; }
#pragma empty_line
      /**
       *  @brief  Attempt to preallocate enough memory for specified number of
       *          characters.
       *  @param  res_arg  Number of characters required.
       *  @throw  std::length_error  If @a res_arg exceeds @c max_size().
       *
       *  This function attempts to reserve enough memory for the
       *  %string to hold the specified number of characters.  If the
       *  number requested is more than max_size(), length_error is
       *  thrown.
       *
       *  The advantage of this function is that if optimal code is a
       *  necessity and the user can determine the string length that will be
       *  required, the user can reserve the memory in %advance, and thus
       *  prevent a possible reallocation of memory and copying of %string
       *  data.
       */
      void
      reserve(size_type __res_arg = 0);
#pragma empty_line
      /**
       *  Erases the string, making it empty.
       */
      void
      clear()
      { _M_mutate(0, this->size(), 0); }
#pragma empty_line
      /**
       *  Returns true if the %string is empty.  Equivalent to 
       *  <code>*this == ""</code>.
       */
      bool
      empty() const
      { return this->size() == 0; }
#pragma empty_line
      // Element access:
      /**
       *  @brief  Subscript access to the data contained in the %string.
       *  @param  pos  The index of the character to access.
       *  @return  Read-only (constant) reference to the character.
       *
       *  This operator allows for easy, array-style, data access.
       *  Note that data access with this operator is unchecked and
       *  out_of_range lookups are not defined. (For checked lookups
       *  see at().)
       */
      const_reference
      operator[] (size_type __pos) const
      {
                                       ;
 return _M_data()[__pos];
      }
#pragma empty_line
      /**
       *  @brief  Subscript access to the data contained in the %string.
       *  @param  pos  The index of the character to access.
       *  @return  Read/write reference to the character.
       *
       *  This operator allows for easy, array-style, data access.
       *  Note that data access with this operator is unchecked and
       *  out_of_range lookups are not defined. (For checked lookups
       *  see at().)  Unshares the string.
       */
      reference
      operator[](size_type __pos)
      {
        // allow pos == size() as v3 extension:
                                       ;
        // but be strict in pedantic mode:
                                         ;
 _M_leak();
 return _M_data()[__pos];
      }
#pragma empty_line
      /**
       *  @brief  Provides access to the data contained in the %string.
       *  @param n The index of the character to access.
       *  @return  Read-only (const) reference to the character.
       *  @throw  std::out_of_range  If @a n is an invalid index.
       *
       *  This function provides for safer data access.  The parameter is
       *  first checked that it is in the range of the string.  The function
       *  throws out_of_range if the check fails.
       */
      const_reference
      at(size_type __n) const
      {
 if (__n >= this->size())
   __throw_out_of_range(("basic_string::at"));
 return _M_data()[__n];
      }
#pragma line 896 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  @brief  Provides access to the data contained in the %string.
       *  @param n The index of the character to access.
       *  @return  Read/write reference to the character.
       *  @throw  std::out_of_range  If @a n is an invalid index.
       *
       *  This function provides for safer data access.  The parameter is
       *  first checked that it is in the range of the string.  The function
       *  throws out_of_range if the check fails.  Success results in
       *  unsharing the string.
       */
      reference
      at(size_type __n)
      {
 if (__n >= size())
   __throw_out_of_range(("basic_string::at"));
 _M_leak();
 return _M_data()[__n];
      }
#pragma empty_line
      // Modifiers:
      /**
       *  @brief  Append a string to this string.
       *  @param str  The string to append.
       *  @return  Reference to this string.
       */
      basic_string&
      operator+=(const basic_string& __str)
      { return this->append(__str); }
#pragma empty_line
      /**
       *  @brief  Append a C string.
       *  @param s  The C string to append.
       *  @return  Reference to this string.
       */
      basic_string&
      operator+=(const _CharT* __s)
      { return this->append(__s); }
#pragma empty_line
      /**
       *  @brief  Append a character.
       *  @param c  The character to append.
       *  @return  Reference to this string.
       */
      basic_string&
      operator+=(_CharT __c)
      {
 this->push_back(__c);
 return *this;
      }
#pragma line 958 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  @brief  Append a string to this string.
       *  @param str  The string to append.
       *  @return  Reference to this string.
       */
      basic_string&
      append(const basic_string& __str);
#pragma empty_line
      /**
       *  @brief  Append a substring.
       *  @param str  The string to append.
       *  @param pos  Index of the first character of str to append.
       *  @param n  The number of characters to append.
       *  @return  Reference to this string.
       *  @throw  std::out_of_range if @a pos is not a valid index.
       *
       *  This function appends @a n characters from @a str starting at @a pos
       *  to this string.  If @a n is is larger than the number of available
       *  characters in @a str, the remainder of @a str is appended.
       */
      basic_string&
      append(const basic_string& __str, size_type __pos, size_type __n);
#pragma empty_line
      /**
       *  @brief  Append a C substring.
       *  @param s  The C string to append.
       *  @param n  The number of characters to append.
       *  @return  Reference to this string.
       */
      basic_string&
      append(const _CharT* __s, size_type __n);
#pragma empty_line
      /**
       *  @brief  Append a C string.
       *  @param s  The C string to append.
       *  @return  Reference to this string.
       */
      basic_string&
      append(const _CharT* __s)
      {
                               ;
 return this->append(__s, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Append multiple characters.
       *  @param n  The number of characters to append.
       *  @param c  The character to use.
       *  @return  Reference to this string.
       *
       *  Appends n copies of c to this string.
       */
      basic_string&
      append(size_type __n, _CharT __c);
#pragma line 1024 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  @brief  Append a range of characters.
       *  @param first  Iterator referencing the first character to append.
       *  @param last  Iterator marking the end of the range.
       *  @return  Reference to this string.
       *
       *  Appends characters in the range [first,last) to this string.
       */
      template<class _InputIterator>
        basic_string&
        append(_InputIterator __first, _InputIterator __last)
        { return this->replace(_M_iend(), _M_iend(), __first, __last); }
#pragma empty_line
      /**
       *  @brief  Append a single character.
       *  @param c  Character to append.
       */
      void
      push_back(_CharT __c)
      {
 const size_type __len = 1 + this->size();
 if (__len > this->capacity() || _M_rep()->_M_is_shared())
   this->reserve(__len);
 traits_type::assign(_M_data()[this->size()], __c);
 _M_rep()->_M_set_length_and_sharable(__len);
      }
#pragma empty_line
      /**
       *  @brief  Set value to contents of another string.
       *  @param  str  Source string to use.
       *  @return  Reference to this string.
       */
      basic_string&
      assign(const basic_string& __str);
#pragma line 1076 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  @brief  Set value to a substring of a string.
       *  @param str  The string to use.
       *  @param pos  Index of the first character of str.
       *  @param n  Number of characters to use.
       *  @return  Reference to this string.
       *  @throw  std::out_of_range if @a pos is not a valid index.
       *
       *  This function sets this string to the substring of @a str consisting
       *  of @a n characters at @a pos.  If @a n is is larger than the number
       *  of available characters in @a str, the remainder of @a str is used.
       */
      basic_string&
      assign(const basic_string& __str, size_type __pos, size_type __n)
      { return this->assign(__str._M_data()
       + __str._M_check(__pos, "basic_string::assign"),
       __str._M_limit(__pos, __n)); }
#pragma empty_line
      /**
       *  @brief  Set value to a C substring.
       *  @param s  The C string to use.
       *  @param n  Number of characters to use.
       *  @return  Reference to this string.
       *
       *  This function sets the value of this string to the first @a n
       *  characters of @a s.  If @a n is is larger than the number of
       *  available characters in @a s, the remainder of @a s is used.
       */
      basic_string&
      assign(const _CharT* __s, size_type __n);
#pragma empty_line
      /**
       *  @brief  Set value to contents of a C string.
       *  @param s  The C string to use.
       *  @return  Reference to this string.
       *
       *  This function sets the value of this string to the value of @a s.
       *  The data is copied, so there is no dependence on @a s once the
       *  function returns.
       */
      basic_string&
      assign(const _CharT* __s)
      {
                               ;
 return this->assign(__s, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Set value to multiple characters.
       *  @param n  Length of the resulting string.
       *  @param c  The character to use.
       *  @return  Reference to this string.
       *
       *  This function sets the value of this string to @a n copies of
       *  character @a c.
       */
      basic_string&
      assign(size_type __n, _CharT __c)
      { return _M_replace_aux(size_type(0), this->size(), __n, __c); }
#pragma empty_line
      /**
       *  @brief  Set value to a range of characters.
       *  @param first  Iterator referencing the first character to append.
       *  @param last  Iterator marking the end of the range.
       *  @return  Reference to this string.
       *
       *  Sets value of string to characters in the range [first,last).
      */
      template<class _InputIterator>
        basic_string&
        assign(_InputIterator __first, _InputIterator __last)
        { return this->replace(_M_ibegin(), _M_iend(), __first, __last); }
#pragma line 1160 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  @brief  Insert multiple characters.
       *  @param p  Iterator referencing location in string to insert at.
       *  @param n  Number of characters to insert
       *  @param c  The character to insert.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Inserts @a n copies of character @a c starting at the position
       *  referenced by iterator @a p.  If adding characters causes the length
       *  to exceed max_size(), length_error is thrown.  The value of the
       *  string doesn't change if an error is thrown.
      */
      void
      insert(iterator __p, size_type __n, _CharT __c)
      { this->replace(__p, __p, __n, __c); }
#pragma empty_line
      /**
       *  @brief  Insert a range of characters.
       *  @param p  Iterator referencing location in string to insert at.
       *  @param beg  Start of range.
       *  @param end  End of range.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Inserts characters in range [beg,end).  If adding characters causes
       *  the length to exceed max_size(), length_error is thrown.  The value
       *  of the string doesn't change if an error is thrown.
      */
      template<class _InputIterator>
        void
        insert(iterator __p, _InputIterator __beg, _InputIterator __end)
        { this->replace(__p, __p, __beg, __end); }
#pragma line 1207 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
      /**
       *  @brief  Insert value of a string.
       *  @param pos1  Iterator referencing location in string to insert at.
       *  @param str  The string to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Inserts value of @a str starting at @a pos1.  If adding characters
       *  causes the length to exceed max_size(), length_error is thrown.  The
       *  value of the string doesn't change if an error is thrown.
      */
      basic_string&
      insert(size_type __pos1, const basic_string& __str)
      { return this->insert(__pos1, __str, size_type(0), __str.size()); }
#pragma empty_line
      /**
       *  @brief  Insert a substring.
       *  @param pos1  Iterator referencing location in string to insert at.
       *  @param str  The string to insert.
       *  @param pos2  Start of characters in str to insert.
       *  @param n  Number of characters to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *  @throw  std::out_of_range  If @a pos1 > size() or
       *  @a pos2 > @a str.size().
       *
       *  Starting at @a pos1, insert @a n character of @a str beginning with
       *  @a pos2.  If adding characters causes the length to exceed
       *  max_size(), length_error is thrown.  If @a pos1 is beyond the end of
       *  this string or @a pos2 is beyond the end of @a str, out_of_range is
       *  thrown.  The value of the string doesn't change if an error is
       *  thrown.
      */
      basic_string&
      insert(size_type __pos1, const basic_string& __str,
      size_type __pos2, size_type __n)
      { return this->insert(__pos1, __str._M_data()
       + __str._M_check(__pos2, "basic_string::insert"),
       __str._M_limit(__pos2, __n)); }
#pragma empty_line
      /**
       *  @brief  Insert a C substring.
       *  @param pos  Iterator referencing location in string to insert at.
       *  @param s  The C string to insert.
       *  @param n  The number of characters to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *  @throw  std::out_of_range  If @a pos is beyond the end of this
       *  string.
       *
       *  Inserts the first @a n characters of @a s starting at @a pos.  If
       *  adding characters causes the length to exceed max_size(),
       *  length_error is thrown.  If @a pos is beyond end(), out_of_range is
       *  thrown.  The value of the string doesn't change if an error is
       *  thrown.
      */
      basic_string&
      insert(size_type __pos, const _CharT* __s, size_type __n);
#pragma empty_line
      /**
       *  @brief  Insert a C string.
       *  @param pos  Iterator referencing location in string to insert at.
       *  @param s  The C string to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *  @throw  std::out_of_range  If @a pos is beyond the end of this
       *  string.
       *
       *  Inserts the first @a n characters of @a s starting at @a pos.  If
       *  adding characters causes the length to exceed max_size(),
       *  length_error is thrown.  If @a pos is beyond end(), out_of_range is
       *  thrown.  The value of the string doesn't change if an error is
       *  thrown.
      */
      basic_string&
      insert(size_type __pos, const _CharT* __s)
      {
                               ;
 return this->insert(__pos, __s, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Insert multiple characters.
       *  @param pos  Index in string to insert at.
       *  @param n  Number of characters to insert
       *  @param c  The character to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *  @throw  std::out_of_range  If @a pos is beyond the end of this
       *  string.
       *
       *  Inserts @a n copies of character @a c starting at index @a pos.  If
       *  adding characters causes the length to exceed max_size(),
       *  length_error is thrown.  If @a pos > length(), out_of_range is
       *  thrown.  The value of the string doesn't change if an error is
       *  thrown.
      */
      basic_string&
      insert(size_type __pos, size_type __n, _CharT __c)
      { return _M_replace_aux(_M_check(__pos, "basic_string::insert"),
         size_type(0), __n, __c); }
#pragma empty_line
      /**
       *  @brief  Insert one character.
       *  @param p  Iterator referencing position in string to insert at.
       *  @param c  The character to insert.
       *  @return  Iterator referencing newly inserted char.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Inserts character @a c at position referenced by @a p.  If adding
       *  character causes the length to exceed max_size(), length_error is
       *  thrown.  If @a p is beyond end of string, out_of_range is thrown.
       *  The value of the string doesn't change if an error is thrown.
      */
      iterator
      insert(iterator __p, _CharT __c)
      {
                                                                 ;
 const size_type __pos = __p - _M_ibegin();
 _M_replace_aux(__pos, size_type(0), size_type(1), __c);
 _M_rep()->_M_set_leaked();
 return iterator(_M_data() + __pos);
      }
#pragma empty_line
      /**
       *  @brief  Remove characters.
       *  @param pos  Index of first character to remove (default 0).
       *  @param n  Number of characters to remove (default remainder).
       *  @return  Reference to this string.
       *  @throw  std::out_of_range  If @a pos is beyond the end of this
       *  string.
       *
       *  Removes @a n characters from this string starting at @a pos.  The
       *  length of the string is reduced by @a n.  If there are < @a n
       *  characters to remove, the remainder of the string is truncated.  If
       *  @a p is beyond end of string, out_of_range is thrown.  The value of
       *  the string doesn't change if an error is thrown.
      */
      basic_string&
      erase(size_type __pos = 0, size_type __n = npos)
      {
 _M_mutate(_M_check(__pos, "basic_string::erase"),
    _M_limit(__pos, __n), size_type(0));
 return *this;
      }
#pragma empty_line
      /**
       *  @brief  Remove one character.
       *  @param position  Iterator referencing the character to remove.
       *  @return  iterator referencing same location after removal.
       *
       *  Removes the character at @a position from this string. The value
       *  of the string doesn't change if an error is thrown.
      */
      iterator
      erase(iterator __position)
      {
#pragma empty_line
                               ;
 const size_type __pos = __position - _M_ibegin();
 _M_mutate(__pos, size_type(1), size_type(0));
 _M_rep()->_M_set_leaked();
 return iterator(_M_data() + __pos);
      }
#pragma empty_line
      /**
       *  @brief  Remove a range of characters.
       *  @param first  Iterator referencing the first character to remove.
       *  @param last  Iterator referencing the end of the range.
       *  @return  Iterator referencing location of first after removal.
       *
       *  Removes the characters in the range [first,last) from this string.
       *  The value of the string doesn't change if an error is thrown.
      */
      iterator
      erase(iterator __first, iterator __last);
#pragma empty_line
      /**
       *  @brief  Replace characters with value from another string.
       *  @param pos  Index of first character to replace.
       *  @param n  Number of characters to be replaced.
       *  @param str  String to insert.
       *  @return  Reference to this string.
       *  @throw  std::out_of_range  If @a pos is beyond the end of this
       *  string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [pos,pos+n) from this string.
       *  In place, the value of @a str is inserted.  If @a pos is beyond end
       *  of string, out_of_range is thrown.  If the length of the result
       *  exceeds max_size(), length_error is thrown.  The value of the string
       *  doesn't change if an error is thrown.
      */
      basic_string&
      replace(size_type __pos, size_type __n, const basic_string& __str)
      { return this->replace(__pos, __n, __str._M_data(), __str.size()); }
#pragma empty_line
      /**
       *  @brief  Replace characters with value from another string.
       *  @param pos1  Index of first character to replace.
       *  @param n1  Number of characters to be replaced.
       *  @param str  String to insert.
       *  @param pos2  Index of first character of str to use.
       *  @param n2  Number of characters from str to use.
       *  @return  Reference to this string.
       *  @throw  std::out_of_range  If @a pos1 > size() or @a pos2 >
       *  str.size().
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [pos1,pos1 + n) from this
       *  string.  In place, the value of @a str is inserted.  If @a pos is
       *  beyond end of string, out_of_range is thrown.  If the length of the
       *  result exceeds max_size(), length_error is thrown.  The value of the
       *  string doesn't change if an error is thrown.
      */
      basic_string&
      replace(size_type __pos1, size_type __n1, const basic_string& __str,
       size_type __pos2, size_type __n2)
      { return this->replace(__pos1, __n1, __str._M_data()
        + __str._M_check(__pos2, "basic_string::replace"),
        __str._M_limit(__pos2, __n2)); }
#pragma empty_line
      /**
       *  @brief  Replace characters with value of a C substring.
       *  @param pos  Index of first character to replace.
       *  @param n1  Number of characters to be replaced.
       *  @param s  C string to insert.
       *  @param n2  Number of characters from @a s to use.
       *  @return  Reference to this string.
       *  @throw  std::out_of_range  If @a pos1 > size().
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [pos,pos + n1) from this string.
       *  In place, the first @a n2 characters of @a s are inserted, or all
       *  of @a s if @a n2 is too large.  If @a pos is beyond end of string,
       *  out_of_range is thrown.  If the length of result exceeds max_size(),
       *  length_error is thrown.  The value of the string doesn't change if
       *  an error is thrown.
      */
      basic_string&
      replace(size_type __pos, size_type __n1, const _CharT* __s,
       size_type __n2);
#pragma empty_line
      /**
       *  @brief  Replace characters with value of a C string.
       *  @param pos  Index of first character to replace.
       *  @param n1  Number of characters to be replaced.
       *  @param s  C string to insert.
       *  @return  Reference to this string.
       *  @throw  std::out_of_range  If @a pos > size().
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [pos,pos + n1) from this string.
       *  In place, the characters of @a s are inserted.  If @a pos is beyond
       *  end of string, out_of_range is thrown.  If the length of result
       *  exceeds max_size(), length_error is thrown.  The value of the string
       *  doesn't change if an error is thrown.
      */
      basic_string&
      replace(size_type __pos, size_type __n1, const _CharT* __s)
      {
                               ;
 return this->replace(__pos, __n1, __s, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Replace characters with multiple characters.
       *  @param pos  Index of first character to replace.
       *  @param n1  Number of characters to be replaced.
       *  @param n2  Number of characters to insert.
       *  @param c  Character to insert.
       *  @return  Reference to this string.
       *  @throw  std::out_of_range  If @a pos > size().
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [pos,pos + n1) from this string.
       *  In place, @a n2 copies of @a c are inserted.  If @a pos is beyond
       *  end of string, out_of_range is thrown.  If the length of result
       *  exceeds max_size(), length_error is thrown.  The value of the string
       *  doesn't change if an error is thrown.
      */
      basic_string&
      replace(size_type __pos, size_type __n1, size_type __n2, _CharT __c)
      { return _M_replace_aux(_M_check(__pos, "basic_string::replace"),
         _M_limit(__pos, __n1), __n2, __c); }
#pragma empty_line
      /**
       *  @brief  Replace range of characters with string.
       *  @param i1  Iterator referencing start of range to replace.
       *  @param i2  Iterator referencing end of range to replace.
       *  @param str  String value to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [i1,i2).  In place, the value of
       *  @a str is inserted.  If the length of result exceeds max_size(),
       *  length_error is thrown.  The value of the string doesn't change if
       *  an error is thrown.
      */
      basic_string&
      replace(iterator __i1, iterator __i2, const basic_string& __str)
      { return this->replace(__i1, __i2, __str._M_data(), __str.size()); }
#pragma empty_line
      /**
       *  @brief  Replace range of characters with C substring.
       *  @param i1  Iterator referencing start of range to replace.
       *  @param i2  Iterator referencing end of range to replace.
       *  @param s  C string value to insert.
       *  @param n  Number of characters from s to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [i1,i2).  In place, the first @a
       *  n characters of @a s are inserted.  If the length of result exceeds
       *  max_size(), length_error is thrown.  The value of the string doesn't
       *  change if an error is thrown.
      */
      basic_string&
      replace(iterator __i1, iterator __i2, const _CharT* __s, size_type __n)
      {
#pragma empty_line
                          ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1, __s, __n);
      }
#pragma empty_line
      /**
       *  @brief  Replace range of characters with C string.
       *  @param i1  Iterator referencing start of range to replace.
       *  @param i2  Iterator referencing end of range to replace.
       *  @param s  C string value to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [i1,i2).  In place, the
       *  characters of @a s are inserted.  If the length of result exceeds
       *  max_size(), length_error is thrown.  The value of the string doesn't
       *  change if an error is thrown.
      */
      basic_string&
      replace(iterator __i1, iterator __i2, const _CharT* __s)
      {
                               ;
 return this->replace(__i1, __i2, __s, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Replace range of characters with multiple characters
       *  @param i1  Iterator referencing start of range to replace.
       *  @param i2  Iterator referencing end of range to replace.
       *  @param n  Number of characters to insert.
       *  @param c  Character to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [i1,i2).  In place, @a n copies
       *  of @a c are inserted.  If the length of result exceeds max_size(),
       *  length_error is thrown.  The value of the string doesn't change if
       *  an error is thrown.
      */
      basic_string&
      replace(iterator __i1, iterator __i2, size_type __n, _CharT __c)
      {
#pragma empty_line
                          ;
 return _M_replace_aux(__i1 - _M_ibegin(), __i2 - __i1, __n, __c);
      }
#pragma empty_line
      /**
       *  @brief  Replace range of characters with range.
       *  @param i1  Iterator referencing start of range to replace.
       *  @param i2  Iterator referencing end of range to replace.
       *  @param k1  Iterator referencing start of range to insert.
       *  @param k2  Iterator referencing end of range to insert.
       *  @return  Reference to this string.
       *  @throw  std::length_error  If new length exceeds @c max_size().
       *
       *  Removes the characters in the range [i1,i2).  In place, characters
       *  in the range [k1,k2) are inserted.  If the length of result exceeds
       *  max_size(), length_error is thrown.  The value of the string doesn't
       *  change if an error is thrown.
      */
      template<class _InputIterator>
        basic_string&
        replace(iterator __i1, iterator __i2,
  _InputIterator __k1, _InputIterator __k2)
        {
#pragma empty_line
                            ;
                                             ;
   typedef typename std::__is_integer<_InputIterator>::__type _Integral;
   return _M_replace_dispatch(__i1, __i2, __k1, __k2, _Integral());
 }
#pragma empty_line
      // Specializations for the common case of pointer and iterator:
      // useful to avoid the overhead of temporary buffering in _M_replace.
      basic_string&
      replace(iterator __i1, iterator __i2, _CharT* __k1, _CharT* __k2)
      {
#pragma empty_line
                          ;
                                           ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1, __k2 - __k1);
      }
#pragma empty_line
      basic_string&
      replace(iterator __i1, iterator __i2,
       const _CharT* __k1, const _CharT* __k2)
      {
#pragma empty_line
                          ;
                                           ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1, __k2 - __k1);
      }
#pragma empty_line
      basic_string&
      replace(iterator __i1, iterator __i2, iterator __k1, iterator __k2)
      {
#pragma empty_line
                          ;
                                           ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1.base(), __k2 - __k1);
      }
#pragma empty_line
      basic_string&
      replace(iterator __i1, iterator __i2,
       const_iterator __k1, const_iterator __k2)
      {
#pragma empty_line
                          ;
                                           ;
 return this->replace(__i1 - _M_ibegin(), __i2 - __i1,
        __k1.base(), __k2 - __k1);
      }
#pragma line 1663 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
    private:
      template<class _Integer>
 basic_string&
 _M_replace_dispatch(iterator __i1, iterator __i2, _Integer __n,
       _Integer __val, __true_type)
        { return _M_replace_aux(__i1 - _M_ibegin(), __i2 - __i1, __n, __val); }
#pragma empty_line
      template<class _InputIterator>
 basic_string&
 _M_replace_dispatch(iterator __i1, iterator __i2, _InputIterator __k1,
       _InputIterator __k2, __false_type);
#pragma empty_line
      basic_string&
      _M_replace_aux(size_type __pos1, size_type __n1, size_type __n2,
       _CharT __c);
#pragma empty_line
      basic_string&
      _M_replace_safe(size_type __pos1, size_type __n1, const _CharT* __s,
        size_type __n2);
#pragma empty_line
      // _S_construct_aux is used to implement the 21.3.1 para 15 which
      // requires special behaviour if _InIter is an integral type
      template<class _InIterator>
        static _CharT*
        _S_construct_aux(_InIterator __beg, _InIterator __end,
    const _Alloc& __a, __false_type)
 {
          typedef typename iterator_traits<_InIterator>::iterator_category _Tag;
          return _S_construct(__beg, __end, __a, _Tag());
 }
#pragma empty_line
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 438. Ambiguity in the "do the right thing" clause
      template<class _Integer>
        static _CharT*
        _S_construct_aux(_Integer __beg, _Integer __end,
    const _Alloc& __a, __true_type)
        { return _S_construct_aux_2(static_cast<size_type>(__beg),
        __end, __a); }
#pragma empty_line
      static _CharT*
      _S_construct_aux_2(size_type __req, _CharT __c, const _Alloc& __a)
      { return _S_construct(__req, __c, __a); }
#pragma empty_line
      template<class _InIterator>
        static _CharT*
        _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a)
 {
   typedef typename std::__is_integer<_InIterator>::__type _Integral;
   return _S_construct_aux(__beg, __end, __a, _Integral());
        }
#pragma empty_line
      // For Input Iterators, used in istreambuf_iterators, etc.
      template<class _InIterator>
        static _CharT*
         _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
        input_iterator_tag);
#pragma empty_line
      // For forward_iterators up to random_access_iterators, used for
      // string::iterator, _CharT*, etc.
      template<class _FwdIterator>
        static _CharT*
        _S_construct(_FwdIterator __beg, _FwdIterator __end, const _Alloc& __a,
       forward_iterator_tag);
#pragma empty_line
      static _CharT*
      _S_construct(size_type __req, _CharT __c, const _Alloc& __a);
#pragma empty_line
    public:
#pragma empty_line
      /**
       *  @brief  Copy substring into C string.
       *  @param s  C string to copy value into.
       *  @param n  Number of characters to copy.
       *  @param pos  Index of first character to copy.
       *  @return  Number of characters actually copied
       *  @throw  std::out_of_range  If pos > size().
       *
       *  Copies up to @a n characters starting at @a pos into the C string @a
       *  s.  If @a pos is %greater than size(), out_of_range is thrown.
      */
      size_type
      copy(_CharT* __s, size_type __n, size_type __pos = 0) const;
#pragma empty_line
      /**
       *  @brief  Swap contents with another string.
       *  @param s  String to swap with.
       *
       *  Exchanges the contents of this string with that of @a s in constant
       *  time.
      */
      void
      swap(basic_string& __s);
#pragma empty_line
      // String operations:
      /**
       *  @brief  Return const pointer to null-terminated contents.
       *
       *  This is a handle to internal data.  Do not modify or dire things may
       *  happen.
      */
      const _CharT*
      c_str() const
      { return _M_data(); }
#pragma empty_line
      /**
       *  @brief  Return const pointer to contents.
       *
       *  This is a handle to internal data.  Do not modify or dire things may
       *  happen.
      */
      const _CharT*
      data() const
      { return _M_data(); }
#pragma empty_line
      /**
       *  @brief  Return copy of allocator used to construct this string.
      */
      allocator_type
      get_allocator() const
      { return _M_dataplus; }
#pragma empty_line
      /**
       *  @brief  Find position of a C substring.
       *  @param s  C string to locate.
       *  @param pos  Index of character to search from.
       *  @param n  Number of characters from @a s to search for.
       *  @return  Index of start of first occurrence.
       *
       *  Starting from @a pos, searches forward for the first @a n characters
       *  in @a s within this string.  If found, returns the index where it
       *  begins.  If not found, returns npos.
      */
      size_type
      find(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma empty_line
      /**
       *  @brief  Find position of a string.
       *  @param str  String to locate.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of start of first occurrence.
       *
       *  Starting from @a pos, searches forward for value of @a str within
       *  this string.  If found, returns the index where it begins.  If not
       *  found, returns npos.
      */
      size_type
      find(const basic_string& __str, size_type __pos = 0) const
      { return this->find(__str.data(), __pos, __str.size()); }
#pragma empty_line
      /**
       *  @brief  Find position of a C string.
       *  @param s  C string to locate.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of start of first occurrence.
       *
       *  Starting from @a pos, searches forward for the value of @a s within
       *  this string.  If found, returns the index where it begins.  If not
       *  found, returns npos.
      */
      size_type
      find(const _CharT* __s, size_type __pos = 0) const
      {
                               ;
 return this->find(__s, __pos, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Find position of a character.
       *  @param c  Character to locate.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for @a c within this string.
       *  If found, returns the index where it was found.  If not found,
       *  returns npos.
      */
      size_type
      find(_CharT __c, size_type __pos = 0) const;
#pragma empty_line
      /**
       *  @brief  Find last position of a string.
       *  @param str  String to locate.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of start of last occurrence.
       *
       *  Starting from @a pos, searches backward for value of @a str within
       *  this string.  If found, returns the index where it begins.  If not
       *  found, returns npos.
      */
      size_type
      rfind(const basic_string& __str, size_type __pos = npos) const
      { return this->rfind(__str.data(), __pos, __str.size()); }
#pragma empty_line
      /**
       *  @brief  Find last position of a C substring.
       *  @param s  C string to locate.
       *  @param pos  Index of character to search back from.
       *  @param n  Number of characters from s to search for.
       *  @return  Index of start of last occurrence.
       *
       *  Starting from @a pos, searches backward for the first @a n
       *  characters in @a s within this string.  If found, returns the index
       *  where it begins.  If not found, returns npos.
      */
      size_type
      rfind(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma empty_line
      /**
       *  @brief  Find last position of a C string.
       *  @param s  C string to locate.
       *  @param pos  Index of character to start search at (default end).
       *  @return  Index of start of  last occurrence.
       *
       *  Starting from @a pos, searches backward for the value of @a s within
       *  this string.  If found, returns the index where it begins.  If not
       *  found, returns npos.
      */
      size_type
      rfind(const _CharT* __s, size_type __pos = npos) const
      {
                               ;
 return this->rfind(__s, __pos, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Find last position of a character.
       *  @param c  Character to locate.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for @a c within this string.
       *  If found, returns the index where it was found.  If not found,
       *  returns npos.
      */
      size_type
      rfind(_CharT __c, size_type __pos = npos) const;
#pragma empty_line
      /**
       *  @brief  Find position of a character of string.
       *  @param str  String containing characters to locate.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for one of the characters of
       *  @a str within this string.  If found, returns the index where it was
       *  found.  If not found, returns npos.
      */
      size_type
      find_first_of(const basic_string& __str, size_type __pos = 0) const
      { return this->find_first_of(__str.data(), __pos, __str.size()); }
#pragma empty_line
      /**
       *  @brief  Find position of a character of C substring.
       *  @param s  String containing characters to locate.
       *  @param pos  Index of character to search from.
       *  @param n  Number of characters from s to search for.
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for one of the first @a n
       *  characters of @a s within this string.  If found, returns the index
       *  where it was found.  If not found, returns npos.
      */
      size_type
      find_first_of(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma empty_line
      /**
       *  @brief  Find position of a character of C string.
       *  @param s  String containing characters to locate.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for one of the characters of
       *  @a s within this string.  If found, returns the index where it was
       *  found.  If not found, returns npos.
      */
      size_type
      find_first_of(const _CharT* __s, size_type __pos = 0) const
      {
                               ;
 return this->find_first_of(__s, __pos, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Find position of a character.
       *  @param c  Character to locate.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for the character @a c within
       *  this string.  If found, returns the index where it was found.  If
       *  not found, returns npos.
       *
       *  Note: equivalent to find(c, pos).
      */
      size_type
      find_first_of(_CharT __c, size_type __pos = 0) const
      { return this->find(__c, __pos); }
#pragma empty_line
      /**
       *  @brief  Find last position of a character of string.
       *  @param str  String containing characters to locate.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for one of the characters of
       *  @a str within this string.  If found, returns the index where it was
       *  found.  If not found, returns npos.
      */
      size_type
      find_last_of(const basic_string& __str, size_type __pos = npos) const
      { return this->find_last_of(__str.data(), __pos, __str.size()); }
#pragma empty_line
      /**
       *  @brief  Find last position of a character of C substring.
       *  @param s  C string containing characters to locate.
       *  @param pos  Index of character to search back from.
       *  @param n  Number of characters from s to search for.
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for one of the first @a n
       *  characters of @a s within this string.  If found, returns the index
       *  where it was found.  If not found, returns npos.
      */
      size_type
      find_last_of(const _CharT* __s, size_type __pos, size_type __n) const;
#pragma empty_line
      /**
       *  @brief  Find last position of a character of C string.
       *  @param s  C string containing characters to locate.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for one of the characters of
       *  @a s within this string.  If found, returns the index where it was
       *  found.  If not found, returns npos.
      */
      size_type
      find_last_of(const _CharT* __s, size_type __pos = npos) const
      {
                               ;
 return this->find_last_of(__s, __pos, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Find last position of a character.
       *  @param c  Character to locate.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for @a c within this string.
       *  If found, returns the index where it was found.  If not found,
       *  returns npos.
       *
       *  Note: equivalent to rfind(c, pos).
      */
      size_type
      find_last_of(_CharT __c, size_type __pos = npos) const
      { return this->rfind(__c, __pos); }
#pragma empty_line
      /**
       *  @brief  Find position of a character not in string.
       *  @param str  String containing characters to avoid.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for a character not contained
       *  in @a str within this string.  If found, returns the index where it
       *  was found.  If not found, returns npos.
      */
      size_type
      find_first_not_of(const basic_string& __str, size_type __pos = 0) const
      { return this->find_first_not_of(__str.data(), __pos, __str.size()); }
#pragma empty_line
      /**
       *  @brief  Find position of a character not in C substring.
       *  @param s  C string containing characters to avoid.
       *  @param pos  Index of character to search from.
       *  @param n  Number of characters from s to consider.
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for a character not contained
       *  in the first @a n characters of @a s within this string.  If found,
       *  returns the index where it was found.  If not found, returns npos.
      */
      size_type
      find_first_not_of(const _CharT* __s, size_type __pos,
   size_type __n) const;
#pragma empty_line
      /**
       *  @brief  Find position of a character not in C string.
       *  @param s  C string containing characters to avoid.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for a character not contained
       *  in @a s within this string.  If found, returns the index where it
       *  was found.  If not found, returns npos.
      */
      size_type
      find_first_not_of(const _CharT* __s, size_type __pos = 0) const
      {
                               ;
 return this->find_first_not_of(__s, __pos, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Find position of a different character.
       *  @param c  Character to avoid.
       *  @param pos  Index of character to search from (default 0).
       *  @return  Index of first occurrence.
       *
       *  Starting from @a pos, searches forward for a character other than @a c
       *  within this string.  If found, returns the index where it was found.
       *  If not found, returns npos.
      */
      size_type
      find_first_not_of(_CharT __c, size_type __pos = 0) const;
#pragma empty_line
      /**
       *  @brief  Find last position of a character not in string.
       *  @param str  String containing characters to avoid.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for a character not
       *  contained in @a str within this string.  If found, returns the index
       *  where it was found.  If not found, returns npos.
      */
      size_type
      find_last_not_of(const basic_string& __str, size_type __pos = npos) const
      { return this->find_last_not_of(__str.data(), __pos, __str.size()); }
#pragma empty_line
      /**
       *  @brief  Find last position of a character not in C substring.
       *  @param s  C string containing characters to avoid.
       *  @param pos  Index of character to search back from.
       *  @param n  Number of characters from s to consider.
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for a character not
       *  contained in the first @a n characters of @a s within this string.
       *  If found, returns the index where it was found.  If not found,
       *  returns npos.
      */
      size_type
      find_last_not_of(const _CharT* __s, size_type __pos,
         size_type __n) const;
      /**
       *  @brief  Find last position of a character not in C string.
       *  @param s  C string containing characters to avoid.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for a character not
       *  contained in @a s within this string.  If found, returns the index
       *  where it was found.  If not found, returns npos.
      */
      size_type
      find_last_not_of(const _CharT* __s, size_type __pos = npos) const
      {
                               ;
 return this->find_last_not_of(__s, __pos, traits_type::length(__s));
      }
#pragma empty_line
      /**
       *  @brief  Find last position of a different character.
       *  @param c  Character to avoid.
       *  @param pos  Index of character to search back from (default end).
       *  @return  Index of last occurrence.
       *
       *  Starting from @a pos, searches backward for a character other than
       *  @a c within this string.  If found, returns the index where it was
       *  found.  If not found, returns npos.
      */
      size_type
      find_last_not_of(_CharT __c, size_type __pos = npos) const;
#pragma empty_line
      /**
       *  @brief  Get a substring.
       *  @param pos  Index of first character (default 0).
       *  @param n  Number of characters in substring (default remainder).
       *  @return  The new string.
       *  @throw  std::out_of_range  If pos > size().
       *
       *  Construct and return a new string using the @a n characters starting
       *  at @a pos.  If the string is too short, use the remainder of the
       *  characters.  If @a pos is beyond the end of the string, out_of_range
       *  is thrown.
      */
      basic_string
      substr(size_type __pos = 0, size_type __n = npos) const
      { return basic_string(*this,
       _M_check(__pos, "basic_string::substr"), __n); }
#pragma empty_line
      /**
       *  @brief  Compare to a string.
       *  @param str  String to compare against.
       *  @return  Integer < 0, 0, or > 0.
       *
       *  Returns an integer < 0 if this string is ordered before @a str, 0 if
       *  their values are equivalent, or > 0 if this string is ordered after
       *  @a str.  Determines the effective length rlen of the strings to
       *  compare as the smallest of size() and str.size().  The function
       *  then compares the two strings by calling traits::compare(data(),
       *  str.data(),rlen).  If the result of the comparison is nonzero returns
       *  it, otherwise the shorter one is ordered first.
      */
      int
      compare(const basic_string& __str) const
      {
 const size_type __size = this->size();
 const size_type __osize = __str.size();
 const size_type __len = std::min(__size, __osize);
#pragma empty_line
 int __r = traits_type::compare(_M_data(), __str.data(), __len);
 if (!__r)
   __r = _S_compare(__size, __osize);
 return __r;
      }
#pragma empty_line
      /**
       *  @brief  Compare substring to a string.
       *  @param pos  Index of first character of substring.
       *  @param n  Number of characters in substring.
       *  @param str  String to compare against.
       *  @return  Integer < 0, 0, or > 0.
       *
       *  Form the substring of this string from the @a n characters starting
       *  at @a pos.  Returns an integer < 0 if the substring is ordered
       *  before @a str, 0 if their values are equivalent, or > 0 if the
       *  substring is ordered after @a str.  Determines the effective length
       *  rlen of the strings to compare as the smallest of the length of the
       *  substring and @a str.size().  The function then compares the two
       *  strings by calling traits::compare(substring.data(),str.data(),rlen).
       *  If the result of the comparison is nonzero returns it, otherwise the
       *  shorter one is ordered first.
      */
      int
      compare(size_type __pos, size_type __n, const basic_string& __str) const;
#pragma empty_line
      /**
       *  @brief  Compare substring to a substring.
       *  @param pos1  Index of first character of substring.
       *  @param n1  Number of characters in substring.
       *  @param str  String to compare against.
       *  @param pos2  Index of first character of substring of str.
       *  @param n2  Number of characters in substring of str.
       *  @return  Integer < 0, 0, or > 0.
       *
       *  Form the substring of this string from the @a n1 characters starting
       *  at @a pos1.  Form the substring of @a str from the @a n2 characters
       *  starting at @a pos2.  Returns an integer < 0 if this substring is
       *  ordered before the substring of @a str, 0 if their values are
       *  equivalent, or > 0 if this substring is ordered after the substring
       *  of @a str.  Determines the effective length rlen of the strings
       *  to compare as the smallest of the lengths of the substrings.  The
       *  function then compares the two strings by calling
       *  traits::compare(substring.data(),str.substr(pos2,n2).data(),rlen).
       *  If the result of the comparison is nonzero returns it, otherwise the
       *  shorter one is ordered first.
      */
      int
      compare(size_type __pos1, size_type __n1, const basic_string& __str,
       size_type __pos2, size_type __n2) const;
#pragma empty_line
      /**
       *  @brief  Compare to a C string.
       *  @param s  C string to compare against.
       *  @return  Integer < 0, 0, or > 0.
       *
       *  Returns an integer < 0 if this string is ordered before @a s, 0 if
       *  their values are equivalent, or > 0 if this string is ordered after
       *  @a s.  Determines the effective length rlen of the strings to
       *  compare as the smallest of size() and the length of a string
       *  constructed from @a s.  The function then compares the two strings
       *  by calling traits::compare(data(),s,rlen).  If the result of the
       *  comparison is nonzero returns it, otherwise the shorter one is
       *  ordered first.
      */
      int
      compare(const _CharT* __s) const;
#pragma empty_line
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 5 String::compare specification questionable
      /**
       *  @brief  Compare substring to a C string.
       *  @param pos  Index of first character of substring.
       *  @param n1  Number of characters in substring.
       *  @param s  C string to compare against.
       *  @return  Integer < 0, 0, or > 0.
       *
       *  Form the substring of this string from the @a n1 characters starting
       *  at @a pos.  Returns an integer < 0 if the substring is ordered
       *  before @a s, 0 if their values are equivalent, or > 0 if the
       *  substring is ordered after @a s.  Determines the effective length
       *  rlen of the strings to compare as the smallest of the length of the 
       *  substring and the length of a string constructed from @a s.  The
       *  function then compares the two string by calling
       *  traits::compare(substring.data(),s,rlen).  If the result of the
       *  comparison is nonzero returns it, otherwise the shorter one is
       *  ordered first.
      */
      int
      compare(size_type __pos, size_type __n1, const _CharT* __s) const;
#pragma empty_line
      /**
       *  @brief  Compare substring against a character %array.
       *  @param pos1  Index of first character of substring.
       *  @param n1  Number of characters in substring.
       *  @param s  character %array to compare against.
       *  @param n2  Number of characters of s.
       *  @return  Integer < 0, 0, or > 0.
       *
       *  Form the substring of this string from the @a n1 characters starting
       *  at @a pos1.  Form a string from the first @a n2 characters of @a s.
       *  Returns an integer < 0 if this substring is ordered before the string
       *  from @a s, 0 if their values are equivalent, or > 0 if this substring
       *  is ordered after the string from @a s.   Determines the effective
       *  length rlen of the strings to compare as the smallest of the length
       *  of the substring and @a n2.  The function then compares the two
       *  strings by calling traits::compare(substring.data(),s,rlen).  If the
       *  result of the comparison is nonzero returns it, otherwise the shorter
       *  one is ordered first.
       *
       *  NB: s must have at least n2 characters, &apos;\\0&apos; has
       *  no special meaning.
      */
      int
      compare(size_type __pos, size_type __n1, const _CharT* __s,
       size_type __n2) const;
  };
#pragma empty_line
  // operator+
  /**
   *  @brief  Concatenate two strings.
   *  @param lhs  First string.
   *  @param rhs  Last string.
   *  @return  New string with value of @a lhs followed by @a rhs.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    {
      basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
  /**
   *  @brief  Concatenate C string and string.
   *  @param lhs  First string.
   *  @param rhs  Last string.
   *  @return  New string with value of @a lhs followed by @a rhs.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT,_Traits,_Alloc>
    operator+(const _CharT* __lhs,
       const basic_string<_CharT,_Traits,_Alloc>& __rhs);
#pragma empty_line
  /**
   *  @brief  Concatenate character and string.
   *  @param lhs  First string.
   *  @param rhs  Last string.
   *  @return  New string with @a lhs followed by @a rhs.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT,_Traits,_Alloc>
    operator+(_CharT __lhs, const basic_string<_CharT,_Traits,_Alloc>& __rhs);
#pragma empty_line
  /**
   *  @brief  Concatenate string and C string.
   *  @param lhs  First string.
   *  @param rhs  Last string.
   *  @return  New string with @a lhs followed by @a rhs.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_string<_CharT, _Traits, _Alloc>
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
      const _CharT* __rhs)
    {
      basic_string<_CharT, _Traits, _Alloc> __str(__lhs);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
  /**
   *  @brief  Concatenate string and character.
   *  @param lhs  First string.
   *  @param rhs  Last string.
   *  @return  New string with @a lhs followed by @a rhs.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_string<_CharT, _Traits, _Alloc>
    operator+(const basic_string<_CharT, _Traits, _Alloc>& __lhs, _CharT __rhs)
    {
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __string_type::size_type __size_type;
      __string_type __str(__lhs);
      __str.append(__size_type(1), __rhs);
      return __str;
    }
#pragma line 2417 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.h" 3
  // operator ==
  /**
   *  @brief  Test equivalence of two strings.
   *  @param lhs  First string.
   *  @param rhs  Second string.
   *  @return  True if @a lhs.compare(@a rhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) == 0; }
#pragma empty_line
  template<typename _CharT>
    inline
    typename __gnu_cxx::__enable_if<__is_char<_CharT>::__value, bool>::__type
    operator==(const basic_string<_CharT>& __lhs,
        const basic_string<_CharT>& __rhs)
    { return (__lhs.size() == __rhs.size()
       && !std::char_traits<_CharT>::compare(__lhs.data(), __rhs.data(),
          __lhs.size())); }
#pragma empty_line
  /**
   *  @brief  Test equivalence of C string and string.
   *  @param lhs  C string.
   *  @param rhs  String.
   *  @return  True if @a rhs.compare(@a lhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const _CharT* __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) == 0; }
#pragma empty_line
  /**
   *  @brief  Test equivalence of string and C string.
   *  @param lhs  String.
   *  @param rhs  C string.
   *  @return  True if @a lhs.compare(@a rhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return __lhs.compare(__rhs) == 0; }
#pragma empty_line
  // operator !=
  /**
   *  @brief  Test difference of two strings.
   *  @param lhs  First string.
   *  @param rhs  Second string.
   *  @return  True if @a lhs.compare(@a rhs) != 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator!=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return !(__lhs == __rhs); }
#pragma empty_line
  /**
   *  @brief  Test difference of C string and string.
   *  @param lhs  C string.
   *  @param rhs  String.
   *  @return  True if @a rhs.compare(@a lhs) != 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator!=(const _CharT* __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return !(__lhs == __rhs); }
#pragma empty_line
  /**
   *  @brief  Test difference of string and C string.
   *  @param lhs  String.
   *  @param rhs  C string.
   *  @return  True if @a lhs.compare(@a rhs) != 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator!=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return !(__lhs == __rhs); }
#pragma empty_line
  // operator <
  /**
   *  @brief  Test if string precedes string.
   *  @param lhs  First string.
   *  @param rhs  Second string.
   *  @return  True if @a lhs precedes @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) < 0; }
#pragma empty_line
  /**
   *  @brief  Test if string precedes C string.
   *  @param lhs  String.
   *  @param rhs  C string.
   *  @return  True if @a lhs precedes @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const _CharT* __rhs)
    { return __lhs.compare(__rhs) < 0; }
#pragma empty_line
  /**
   *  @brief  Test if C string precedes string.
   *  @param lhs  C string.
   *  @param rhs  String.
   *  @return  True if @a lhs precedes @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<(const _CharT* __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) > 0; }
#pragma empty_line
  // operator >
  /**
   *  @brief  Test if string follows string.
   *  @param lhs  First string.
   *  @param rhs  Second string.
   *  @return  True if @a lhs follows @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) > 0; }
#pragma empty_line
  /**
   *  @brief  Test if string follows C string.
   *  @param lhs  String.
   *  @param rhs  C string.
   *  @return  True if @a lhs follows @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
       const _CharT* __rhs)
    { return __lhs.compare(__rhs) > 0; }
#pragma empty_line
  /**
   *  @brief  Test if C string follows string.
   *  @param lhs  C string.
   *  @param rhs  String.
   *  @return  True if @a lhs follows @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>(const _CharT* __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) < 0; }
#pragma empty_line
  // operator <=
  /**
   *  @brief  Test if string doesn't follow string.
   *  @param lhs  First string.
   *  @param rhs  Second string.
   *  @return  True if @a lhs doesn't follow @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) <= 0; }
#pragma empty_line
  /**
   *  @brief  Test if string doesn't follow C string.
   *  @param lhs  String.
   *  @param rhs  C string.
   *  @return  True if @a lhs doesn't follow @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return __lhs.compare(__rhs) <= 0; }
#pragma empty_line
  /**
   *  @brief  Test if C string doesn't follow string.
   *  @param lhs  C string.
   *  @param rhs  String.
   *  @return  True if @a lhs doesn't follow @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator<=(const _CharT* __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) >= 0; }
#pragma empty_line
  // operator >=
  /**
   *  @brief  Test if string doesn't precede string.
   *  @param lhs  First string.
   *  @param rhs  Second string.
   *  @return  True if @a lhs doesn't precede @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __lhs.compare(__rhs) >= 0; }
#pragma empty_line
  /**
   *  @brief  Test if string doesn't precede C string.
   *  @param lhs  String.
   *  @param rhs  C string.
   *  @return  True if @a lhs doesn't precede @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>=(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
        const _CharT* __rhs)
    { return __lhs.compare(__rhs) >= 0; }
#pragma empty_line
  /**
   *  @brief  Test if C string doesn't precede string.
   *  @param lhs  C string.
   *  @param rhs  String.
   *  @return  True if @a lhs doesn't precede @a rhs.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator>=(const _CharT* __lhs,
      const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { return __rhs.compare(__lhs) <= 0; }
#pragma empty_line
  /**
   *  @brief  Swap contents of two strings.
   *  @param lhs  First string.
   *  @param rhs  Second string.
   *
   *  Exchanges the contents of @a lhs and @a rhs in constant time.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline void
    swap(basic_string<_CharT, _Traits, _Alloc>& __lhs,
  basic_string<_CharT, _Traits, _Alloc>& __rhs)
    { __lhs.swap(__rhs); }
#pragma empty_line
  /**
   *  @brief  Read stream into a string.
   *  @param is  Input stream.
   *  @param str  Buffer to store into.
   *  @return  Reference to the input stream.
   *
   *  Stores characters from @a is into @a str until whitespace is found, the
   *  end of the stream is encountered, or str.max_size() is reached.  If
   *  is.width() is non-zero, that is the limit on the number of characters
   *  stored into @a str.  Any previous contents of @a str are erased.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __is,
        basic_string<_CharT, _Traits, _Alloc>& __str);
#pragma empty_line
  template<>
    basic_istream<char>&
    operator>>(basic_istream<char>& __is, basic_string<char>& __str);
#pragma empty_line
  /**
   *  @brief  Write string to a stream.
   *  @param os  Output stream.
   *  @param str  String to write out.
   *  @return  Reference to the output stream.
   *
   *  Output characters of @a str into os following the same rules as for
   *  writing a C string.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_ostream<_CharT, _Traits>&
    operator<<(basic_ostream<_CharT, _Traits>& __os,
        const basic_string<_CharT, _Traits, _Alloc>& __str)
    {
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 586. string inserter not a formatted function
      return __ostream_insert(__os, __str.data(), __str.size());
    }
#pragma empty_line
  /**
   *  @brief  Read a line from stream into a string.
   *  @param is  Input stream.
   *  @param str  Buffer to store into.
   *  @param delim  Character marking end of line.
   *  @return  Reference to the input stream.
   *
   *  Stores characters from @a is into @a str until @a delim is found, the
   *  end of the stream is encountered, or str.max_size() is reached.  If
   *  is.width() is non-zero, that is the limit on the number of characters
   *  stored into @a str.  Any previous contents of @a str are erased.  If @a
   *  delim was encountered, it is extracted but not stored into @a str.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    getline(basic_istream<_CharT, _Traits>& __is,
     basic_string<_CharT, _Traits, _Alloc>& __str, _CharT __delim);
#pragma empty_line
  /**
   *  @brief  Read a line from stream into a string.
   *  @param is  Input stream.
   *  @param str  Buffer to store into.
   *  @return  Reference to the input stream.
   *
   *  Stores characters from is into @a str until &apos;\n&apos; is
   *  found, the end of the stream is encountered, or str.max_size()
   *  is reached.  If is.width() is non-zero, that is the limit on the
   *  number of characters stored into @a str.  Any previous contents
   *  of @a str are erased.  If end of line was encountered, it is
   *  extracted but not stored into @a str.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline basic_istream<_CharT, _Traits>&
    getline(basic_istream<_CharT, _Traits>& __is,
     basic_string<_CharT, _Traits, _Alloc>& __str)
    { return getline(__is, __str, __is.widen('\n')); }
#pragma empty_line
  template<>
    basic_istream<char>&
    getline(basic_istream<char>& __in, basic_string<char>& __str,
     char __delim);
#pragma empty_line
#pragma empty_line
  template<>
    basic_istream<wchar_t>&
    getline(basic_istream<wchar_t>& __in, basic_string<wchar_t>& __str,
     wchar_t __delim);
#pragma empty_line
#pragma empty_line
#pragma empty_line
} // namespace
#pragma line 54 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 1 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 1 3
// Components for manipulating sequences of characters -*- C++ -*-
#pragma empty_line
// Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
// 2006, 2007, 2008, 2009, 2010, 2011
// Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 3, or (at your option)
// any later version.
#pragma empty_line
// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
#pragma empty_line
// Under Section 7 of GPL version 3, you are granted additional
// permissions described in the GCC Runtime Library Exception, version
// 3.1, as published by the Free Software Foundation.
#pragma empty_line
// You should have received a copy of the GNU General Public License and
// a copy of the GCC Runtime Library Exception along with this program;
// see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
// <http://www.gnu.org/licenses/>.
#pragma empty_line
/** @file bits/basic_string.tcc
 *  This is an internal header file, included by other library headers.
 *  Do not attempt to use it directly. @headername{string}
 */
#pragma empty_line
//
// ISO C++ 14882: 21  Strings library
//
#pragma empty_line
// Written by Jason Merrill based upon the specification by Takanori Adachi
// in ANSI X3J16/94-0013R2.  Rewritten by Nathan Myers to ISO-14882.
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma line 42 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 3
#pragma empty_line
#pragma empty_line
#pragma empty_line
namespace std __attribute__ ((__visibility__ ("default")))
{
#pragma empty_line
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    const typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    _Rep::_S_max_size = (((npos - sizeof(_Rep_base))/sizeof(_CharT)) - 1) / 4;
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    const _CharT
    basic_string<_CharT, _Traits, _Alloc>::
    _Rep::_S_terminal = _CharT();
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    const typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::npos;
#pragma empty_line
  // Linker sets _S_empty_rep_storage to all 0s (one reference, empty string)
  // at static init time (before static ctors are run).
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::_Rep::_S_empty_rep_storage[
    (sizeof(_Rep_base) + sizeof(_CharT) + sizeof(size_type) - 1) /
      sizeof(size_type)];
#pragma empty_line
  // NB: This is the special case for Input Iterators, used in
  // istreambuf_iterators, etc.
  // Input Iterators have a cost structure very different from
  // pointers, calling for a different coding style.
  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InIterator>
      _CharT*
      basic_string<_CharT, _Traits, _Alloc>::
      _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
     input_iterator_tag)
      {
#pragma empty_line
 if (__beg == __end && __a == _Alloc())
   return _S_empty_rep()._M_refdata();
#pragma empty_line
 // Avoid reallocation for common case.
 _CharT __buf[128];
 size_type __len = 0;
 while (__beg != __end && __len < sizeof(__buf) / sizeof(_CharT))
   {
     __buf[__len++] = *__beg;
     ++__beg;
   }
 _Rep* __r = _Rep::_S_create(__len, size_type(0), __a);
 _M_copy(__r->_M_refdata(), __buf, __len);
 if (true)
   {
     while (__beg != __end)
       {
  if (__len == __r->_M_capacity)
    {
      // Allocate more space.
      _Rep* __another = _Rep::_S_create(__len + 1, __len, __a);
      _M_copy(__another->_M_refdata(), __r->_M_refdata(), __len);
      __r->_M_destroy(__a);
      __r = __another;
    }
  __r->_M_refdata()[__len++] = *__beg;
  ++__beg;
       }
   }
 if (false)
   {
     __r->_M_destroy(__a);
                            ;
   }
 __r->_M_set_length_and_sharable(__len);
 return __r->_M_refdata();
      }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    template <typename _InIterator>
      _CharT*
      basic_string<_CharT, _Traits, _Alloc>::
      _S_construct(_InIterator __beg, _InIterator __end, const _Alloc& __a,
     forward_iterator_tag)
      {
#pragma empty_line
 if (__beg == __end && __a == _Alloc())
   return _S_empty_rep()._M_refdata();
#pragma empty_line
 // NB: Not required, but considered best practice.
 if (__gnu_cxx::__is_null_pointer(__beg) && __beg != __end)
   __throw_logic_error(("basic_string::_S_construct null not valid"));
#pragma empty_line
 const size_type __dnew = static_cast<size_type>(std::distance(__beg,
              __end));
 // Check for out_of_range and length_error exceptions.
 _Rep* __r = _Rep::_S_create(__dnew, size_type(0), __a);
 if (true)
   { _S_copy_chars(__r->_M_refdata(), __beg, __end); }
 if (false)
   {
     __r->_M_destroy(__a);
                            ;
   }
 __r->_M_set_length_and_sharable(__dnew);
 return __r->_M_refdata();
      }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    _CharT*
    basic_string<_CharT, _Traits, _Alloc>::
    _S_construct(size_type __n, _CharT __c, const _Alloc& __a)
    {
#pragma empty_line
      if (__n == 0 && __a == _Alloc())
 return _S_empty_rep()._M_refdata();
#pragma empty_line
      // Check for out_of_range and length_error exceptions.
      _Rep* __r = _Rep::_S_create(__n, size_type(0), __a);
      if (__n)
 _M_assign(__r->_M_refdata(), __n, __c);
#pragma empty_line
      __r->_M_set_length_and_sharable(__n);
      return __r->_M_refdata();
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const basic_string& __str)
    : _M_dataplus(__str._M_rep()->_M_grab(_Alloc(__str.get_allocator()),
       __str.get_allocator()),
    __str.get_allocator())
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const _Alloc& __a)
    : _M_dataplus(_S_construct(size_type(), _CharT(), __a), __a)
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const basic_string& __str, size_type __pos, size_type __n)
    : _M_dataplus(_S_construct(__str._M_data()
          + __str._M_check(__pos,
      "basic_string::basic_string"),
          __str._M_data() + __str._M_limit(__pos, __n)
          + __pos, _Alloc()), _Alloc())
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const basic_string& __str, size_type __pos,
   size_type __n, const _Alloc& __a)
    : _M_dataplus(_S_construct(__str._M_data()
          + __str._M_check(__pos,
      "basic_string::basic_string"),
          __str._M_data() + __str._M_limit(__pos, __n)
          + __pos, __a), __a)
    { }
#pragma empty_line
  // TBD: DPG annotate
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const _CharT* __s, size_type __n, const _Alloc& __a)
    : _M_dataplus(_S_construct(__s, __s + __n, __a), __a)
    { }
#pragma empty_line
  // TBD: DPG annotate
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(const _CharT* __s, const _Alloc& __a)
    : _M_dataplus(_S_construct(__s, __s ? __s + traits_type::length(__s) :
          __s + npos, __a), __a)
    { }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(size_type __n, _CharT __c, const _Alloc& __a)
    : _M_dataplus(_S_construct(__n, __c, __a), __a)
    { }
#pragma empty_line
  // TBD: DPG annotate
  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InputIterator>
    basic_string<_CharT, _Traits, _Alloc>::
    basic_string(_InputIterator __beg, _InputIterator __end, const _Alloc& __a)
    : _M_dataplus(_S_construct(__beg, __end, __a), __a)
    { }
#pragma line 241 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/basic_string.tcc" 3
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    assign(const basic_string& __str)
    {
      if (_M_rep() != __str._M_rep())
 {
   // XXX MT
   const allocator_type __a = this->get_allocator();
   _CharT* __tmp = __str._M_rep()->_M_grab(__a, __str.get_allocator());
   _M_rep()->_M_dispose(__a);
   _M_data(__tmp);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    assign(const _CharT* __s, size_type __n)
    {
                                             ;
      _M_check_length(this->size(), __n, "basic_string::assign");
      if (_M_disjunct(__s) || _M_rep()->_M_is_shared())
 return _M_replace_safe(size_type(0), this->size(), __s, __n);
      else
 {
   // Work in-place.
   const size_type __pos = __s - _M_data();
   if (__pos >= __n)
     _M_copy(_M_data(), __s, __n);
   else if (__pos)
     _M_move(_M_data(), __s, __n);
   _M_rep()->_M_set_length_and_sharable(__n);
   return *this;
 }
     }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(size_type __n, _CharT __c)
    {
      if (__n)
 {
   _M_check_length(size_type(0), __n, "basic_string::append");
   const size_type __len = __n + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     this->reserve(__len);
   _M_assign(_M_data() + this->size(), __n, __c);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(const _CharT* __s, size_type __n)
    {
                                             ;
      if (__n)
 {
   _M_check_length(size_type(0), __n, "basic_string::append");
   const size_type __len = __n + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     {
       if (_M_disjunct(__s))
  this->reserve(__len);
       else
  {
    const size_type __off = __s - _M_data();
    this->reserve(__len);
    __s = _M_data() + __off;
  }
     }
   _M_copy(_M_data() + this->size(), __s, __n);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(const basic_string& __str)
    {
      const size_type __size = __str.size();
      if (__size)
 {
   const size_type __len = __size + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     this->reserve(__len);
   _M_copy(_M_data() + this->size(), __str._M_data(), __size);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    append(const basic_string& __str, size_type __pos, size_type __n)
    {
      __str._M_check(__pos, "basic_string::append");
      __n = __str._M_limit(__pos, __n);
      if (__n)
 {
   const size_type __len = __n + this->size();
   if (__len > this->capacity() || _M_rep()->_M_is_shared())
     this->reserve(__len);
   _M_copy(_M_data() + this->size(), __str._M_data() + __pos, __n);
   _M_rep()->_M_set_length_and_sharable(__len);
 }
      return *this;
    }
#pragma empty_line
   template<typename _CharT, typename _Traits, typename _Alloc>
     basic_string<_CharT, _Traits, _Alloc>&
     basic_string<_CharT, _Traits, _Alloc>::
     insert(size_type __pos, const _CharT* __s, size_type __n)
     {
                                              ;
       _M_check(__pos, "basic_string::insert");
       _M_check_length(size_type(0), __n, "basic_string::insert");
       if (_M_disjunct(__s) || _M_rep()->_M_is_shared())
         return _M_replace_safe(__pos, size_type(0), __s, __n);
       else
         {
           // Work in-place.
           const size_type __off = __s - _M_data();
           _M_mutate(__pos, 0, __n);
           __s = _M_data() + __off;
           _CharT* __p = _M_data() + __pos;
           if (__s + __n <= __p)
             _M_copy(__p, __s, __n);
           else if (__s >= __p)
             _M_copy(__p, __s + __n, __n);
           else
             {
        const size_type __nleft = __p - __s;
               _M_copy(__p, __s, __nleft);
               _M_copy(__p + __nleft, __p + __n, __n - __nleft);
             }
           return *this;
         }
     }
#pragma empty_line
   template<typename _CharT, typename _Traits, typename _Alloc>
     typename basic_string<_CharT, _Traits, _Alloc>::iterator
     basic_string<_CharT, _Traits, _Alloc>::
     erase(iterator __first, iterator __last)
     {
#pragma empty_line
                           ;
#pragma empty_line
       // NB: This isn't just an optimization (bail out early when
       // there is nothing to do, really), it's also a correctness
       // issue vs MT, see libstdc++/40518.
       const size_type __size = __last - __first;
       if (__size)
  {
    const size_type __pos = __first - _M_ibegin();
    _M_mutate(__pos, __size, size_type(0));
    _M_rep()->_M_set_leaked();
    return iterator(_M_data() + __pos);
  }
       else
  return __first;
     }
#pragma empty_line
   template<typename _CharT, typename _Traits, typename _Alloc>
     basic_string<_CharT, _Traits, _Alloc>&
     basic_string<_CharT, _Traits, _Alloc>::
     replace(size_type __pos, size_type __n1, const _CharT* __s,
      size_type __n2)
     {
                                               ;
       _M_check(__pos, "basic_string::replace");
       __n1 = _M_limit(__pos, __n1);
       _M_check_length(__n1, __n2, "basic_string::replace");
       bool __left;
       if (_M_disjunct(__s) || _M_rep()->_M_is_shared())
         return _M_replace_safe(__pos, __n1, __s, __n2);
       else if ((__left = __s + __n2 <= _M_data() + __pos)
  || _M_data() + __pos + __n1 <= __s)
  {
    // Work in-place: non-overlapping case.
    size_type __off = __s - _M_data();
    __left ? __off : (__off += __n2 - __n1);
    _M_mutate(__pos, __n1, __n2);
    _M_copy(_M_data() + __pos, _M_data() + __off, __n2);
    return *this;
  }
       else
  {
    // Todo: overlapping case.
    const basic_string __tmp(__s, __n2);
    return _M_replace_safe(__pos, __n1, __tmp._M_data(), __n2);
  }
     }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::_Rep::
    _M_destroy(const _Alloc& __a) throw ()
    {
      const size_type __size = sizeof(_Rep_base) +
                        (this->_M_capacity + 1) * sizeof(_CharT);
      _Raw_bytes_alloc(__a).deallocate(reinterpret_cast<char*>(this), __size);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    _M_leak_hard()
    {
#pragma empty_line
      if (_M_rep() == &_S_empty_rep())
 return;
#pragma empty_line
      if (_M_rep()->_M_is_shared())
 _M_mutate(0, 0, 0);
      _M_rep()->_M_set_leaked();
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    _M_mutate(size_type __pos, size_type __len1, size_type __len2)
    {
      const size_type __old_size = this->size();
      const size_type __new_size = __old_size + __len2 - __len1;
      const size_type __how_much = __old_size - __pos - __len1;
#pragma empty_line
      if (__new_size > this->capacity() || _M_rep()->_M_is_shared())
 {
   // Must reallocate.
   const allocator_type __a = get_allocator();
   _Rep* __r = _Rep::_S_create(__new_size, this->capacity(), __a);
#pragma empty_line
   if (__pos)
     _M_copy(__r->_M_refdata(), _M_data(), __pos);
   if (__how_much)
     _M_copy(__r->_M_refdata() + __pos + __len2,
      _M_data() + __pos + __len1, __how_much);
#pragma empty_line
   _M_rep()->_M_dispose(__a);
   _M_data(__r->_M_refdata());
 }
      else if (__how_much && __len1 != __len2)
 {
   // Work in-place.
   _M_move(_M_data() + __pos + __len2,
    _M_data() + __pos + __len1, __how_much);
 }
      _M_rep()->_M_set_length_and_sharable(__new_size);
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    reserve(size_type __res)
    {
      if (__res != this->capacity() || _M_rep()->_M_is_shared())
        {
   // Make sure we don't shrink below the current size
   if (__res < this->size())
     __res = this->size();
   const allocator_type __a = get_allocator();
   _CharT* __tmp = _M_rep()->_M_clone(__a, __res - this->size());
   _M_rep()->_M_dispose(__a);
   _M_data(__tmp);
        }
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    swap(basic_string& __s)
    {
      if (_M_rep()->_M_is_leaked())
 _M_rep()->_M_set_sharable();
      if (__s._M_rep()->_M_is_leaked())
 __s._M_rep()->_M_set_sharable();
      if (this->get_allocator() == __s.get_allocator())
 {
   _CharT* __tmp = _M_data();
   _M_data(__s._M_data());
   __s._M_data(__tmp);
 }
      // The code below can usually be optimized away.
      else
 {
   const basic_string __tmp1(_M_ibegin(), _M_iend(),
        __s.get_allocator());
   const basic_string __tmp2(__s._M_ibegin(), __s._M_iend(),
        this->get_allocator());
   *this = __tmp2;
   __s = __tmp1;
 }
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::_Rep*
    basic_string<_CharT, _Traits, _Alloc>::_Rep::
    _S_create(size_type __capacity, size_type __old_capacity,
       const _Alloc& __alloc)
    {
      // _GLIBCXX_RESOLVE_LIB_DEFECTS
      // 83.  String::npos vs. string::max_size()
      if (__capacity > _S_max_size)
 __throw_length_error(("basic_string::_S_create"));
#pragma empty_line
      // The standard places no restriction on allocating more memory
      // than is strictly needed within this layer at the moment or as
      // requested by an explicit application call to reserve().
#pragma empty_line
      // Many malloc implementations perform quite poorly when an
      // application attempts to allocate memory in a stepwise fashion
      // growing each allocation size by only 1 char.  Additionally,
      // it makes little sense to allocate less linear memory than the
      // natural blocking size of the malloc implementation.
      // Unfortunately, we would need a somewhat low-level calculation
      // with tuned parameters to get this perfect for any particular
      // malloc implementation.  Fortunately, generalizations about
      // common features seen among implementations seems to suffice.
#pragma empty_line
      // __pagesize need not match the actual VM page size for good
      // results in practice, thus we pick a common value on the low
      // side.  __malloc_header_size is an estimate of the amount of
      // overhead per memory allocation (in practice seen N * sizeof
      // (void*) where N is 0, 2 or 4).  According to folklore,
      // picking this value on the high side is better than
      // low-balling it (especially when this algorithm is used with
      // malloc implementations that allocate memory blocks rounded up
      // to a size which is a power of 2).
      const size_type __pagesize = 4096;
      const size_type __malloc_header_size = 4 * sizeof(void*);
#pragma empty_line
      // The below implements an exponential growth policy, necessary to
      // meet amortized linear time requirements of the library: see
      // http://gcc.gnu.org/ml/libstdc++/2001-07/msg00085.html.
      // It's active for allocations requiring an amount of memory above
      // system pagesize. This is consistent with the requirements of the
      // standard: http://gcc.gnu.org/ml/libstdc++/2001-07/msg00130.html
      if (__capacity > __old_capacity && __capacity < 2 * __old_capacity)
 __capacity = 2 * __old_capacity;
#pragma empty_line
      // NB: Need an array of char_type[__capacity], plus a terminating
      // null char_type() element, plus enough for the _Rep data structure.
      // Whew. Seemingly so needy, yet so elemental.
      size_type __size = (__capacity + 1) * sizeof(_CharT) + sizeof(_Rep);
#pragma empty_line
      const size_type __adj_size = __size + __malloc_header_size;
      if (__adj_size > __pagesize && __capacity > __old_capacity)
 {
   const size_type __extra = __pagesize - __adj_size % __pagesize;
   __capacity += __extra / sizeof(_CharT);
   // Never allocate a string bigger than _S_max_size.
   if (__capacity > _S_max_size)
     __capacity = _S_max_size;
   __size = (__capacity + 1) * sizeof(_CharT) + sizeof(_Rep);
 }
#pragma empty_line
      // NB: Might throw, but no worries about a leak, mate: _Rep()
      // does not throw.
      void* __place = _Raw_bytes_alloc(__alloc).allocate(__size);
      _Rep *__p = new (__place) _Rep;
      __p->_M_capacity = __capacity;
      // ABI compatibility - 3.4.x set in _S_create both
      // _M_refcount and _M_length.  All callers of _S_create
      // in basic_string.tcc then set just _M_length.
      // In 4.0.x and later both _M_refcount and _M_length
      // are initialized in the callers, unfortunately we can
      // have 3.4.x compiled code with _S_create callers inlined
      // calling 4.0.x+ _S_create.
      __p->_M_set_sharable();
      return __p;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    _CharT*
    basic_string<_CharT, _Traits, _Alloc>::_Rep::
    _M_clone(const _Alloc& __alloc, size_type __res)
    {
      // Requested capacity of the clone.
      const size_type __requested_cap = this->_M_length + __res;
      _Rep* __r = _Rep::_S_create(__requested_cap, this->_M_capacity,
      __alloc);
      if (this->_M_length)
 _M_copy(__r->_M_refdata(), _M_refdata(), this->_M_length);
#pragma empty_line
      __r->_M_set_length_and_sharable(this->_M_length);
      return __r->_M_refdata();
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    void
    basic_string<_CharT, _Traits, _Alloc>::
    resize(size_type __n, _CharT __c)
    {
      const size_type __size = this->size();
      _M_check_length(__size, __n, "basic_string::resize");
      if (__size < __n)
 this->append(__n - __size, __c);
      else if (__n < __size)
 this->erase(__n);
      // else nothing (in particular, avoid calling _M_mutate() unnecessarily.)
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    template<typename _InputIterator>
      basic_string<_CharT, _Traits, _Alloc>&
      basic_string<_CharT, _Traits, _Alloc>::
      _M_replace_dispatch(iterator __i1, iterator __i2, _InputIterator __k1,
     _InputIterator __k2, __false_type)
      {
 const basic_string __s(__k1, __k2);
 const size_type __n1 = __i2 - __i1;
 _M_check_length(__n1, __s.size(), "basic_string::_M_replace_dispatch");
 return _M_replace_safe(__i1 - _M_ibegin(), __n1, __s._M_data(),
          __s.size());
      }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    _M_replace_aux(size_type __pos1, size_type __n1, size_type __n2,
     _CharT __c)
    {
      _M_check_length(__n1, __n2, "basic_string::_M_replace_aux");
      _M_mutate(__pos1, __n1, __n2);
      if (__n2)
 _M_assign(_M_data() + __pos1, __n2, __c);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>&
    basic_string<_CharT, _Traits, _Alloc>::
    _M_replace_safe(size_type __pos1, size_type __n1, const _CharT* __s,
      size_type __n2)
    {
      _M_mutate(__pos1, __n1, __n2);
      if (__n2)
 _M_copy(_M_data() + __pos1, __s, __n2);
      return *this;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>
    operator+(const _CharT* __lhs,
       const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    {
                                      ;
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __string_type::size_type __size_type;
      const __size_type __len = _Traits::length(__lhs);
      __string_type __str;
      __str.reserve(__len + __rhs.size());
      __str.append(__lhs, __len);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_string<_CharT, _Traits, _Alloc>
    operator+(_CharT __lhs, const basic_string<_CharT, _Traits, _Alloc>& __rhs)
    {
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __string_type::size_type __size_type;
      __string_type __str;
      const __size_type __len = __rhs.size();
      __str.reserve(__len + 1);
      __str.append(__size_type(1), __lhs);
      __str.append(__rhs);
      return __str;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    copy(_CharT* __s, size_type __n, size_type __pos) const
    {
      _M_check(__pos, "basic_string::copy");
      __n = _M_limit(__pos, __n);
                                             ;
      if (__n)
 _M_copy(__s, _M_data() + __pos, __n);
      // 21.3.5.7 par 3: do not append null.  (good.)
      return __n;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find(const _CharT* __s, size_type __pos, size_type __n) const
    {
                                             ;
      const size_type __size = this->size();
      const _CharT* __data = _M_data();
#pragma empty_line
      if (__n == 0)
 return __pos <= __size ? __pos : npos;
#pragma empty_line
      if (__n <= __size)
 {
   for (; __pos <= __size - __n; ++__pos)
     if (traits_type::eq(__data[__pos], __s[0])
  && traits_type::compare(__data + __pos + 1,
     __s + 1, __n - 1) == 0)
       return __pos;
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find(_CharT __c, size_type __pos) const
    {
      size_type __ret = npos;
      const size_type __size = this->size();
      if (__pos < __size)
 {
   const _CharT* __data = _M_data();
   const size_type __n = __size - __pos;
   const _CharT* __p = traits_type::find(__data + __pos, __n, __c);
   if (__p)
     __ret = __p - __data;
 }
      return __ret;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    rfind(const _CharT* __s, size_type __pos, size_type __n) const
    {
                                             ;
      const size_type __size = this->size();
      if (__n <= __size)
 {
   __pos = std::min(size_type(__size - __n), __pos);
   const _CharT* __data = _M_data();
   do
     {
       if (traits_type::compare(__data + __pos, __s, __n) == 0)
  return __pos;
     }
   while (__pos-- > 0);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    rfind(_CharT __c, size_type __pos) const
    {
      size_type __size = this->size();
      if (__size)
 {
   if (--__size > __pos)
     __size = __pos;
   for (++__size; __size-- > 0; )
     if (traits_type::eq(_M_data()[__size], __c))
       return __size;
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_first_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
                                             ;
      for (; __n && __pos < this->size(); ++__pos)
 {
   const _CharT* __p = traits_type::find(__s, __n, _M_data()[__pos]);
   if (__p)
     return __pos;
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_last_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
                                             ;
      size_type __size = this->size();
      if (__size && __n)
 {
   if (--__size > __pos)
     __size = __pos;
   do
     {
       if (traits_type::find(__s, __n, _M_data()[__size]))
  return __size;
     }
   while (__size-- != 0);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_first_not_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
                                             ;
      for (; __pos < this->size(); ++__pos)
 if (!traits_type::find(__s, __n, _M_data()[__pos]))
   return __pos;
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_first_not_of(_CharT __c, size_type __pos) const
    {
      for (; __pos < this->size(); ++__pos)
 if (!traits_type::eq(_M_data()[__pos], __c))
   return __pos;
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_last_not_of(const _CharT* __s, size_type __pos, size_type __n) const
    {
                                             ;
      size_type __size = this->size();
      if (__size)
 {
   if (--__size > __pos)
     __size = __pos;
   do
     {
       if (!traits_type::find(__s, __n, _M_data()[__size]))
  return __size;
     }
   while (__size--);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    typename basic_string<_CharT, _Traits, _Alloc>::size_type
    basic_string<_CharT, _Traits, _Alloc>::
    find_last_not_of(_CharT __c, size_type __pos) const
    {
      size_type __size = this->size();
      if (__size)
 {
   if (--__size > __pos)
     __size = __pos;
   do
     {
       if (!traits_type::eq(_M_data()[__size], __c))
  return __size;
     }
   while (__size--);
 }
      return npos;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string<_CharT, _Traits, _Alloc>::
    compare(size_type __pos, size_type __n, const basic_string& __str) const
    {
      _M_check(__pos, "basic_string::compare");
      __n = _M_limit(__pos, __n);
      const size_type __osize = __str.size();
      const size_type __len = std::min(__n, __osize);
      int __r = traits_type::compare(_M_data() + __pos, __str.data(), __len);
      if (!__r)
 __r = _S_compare(__n, __osize);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string<_CharT, _Traits, _Alloc>::
    compare(size_type __pos1, size_type __n1, const basic_string& __str,
     size_type __pos2, size_type __n2) const
    {
      _M_check(__pos1, "basic_string::compare");
      __str._M_check(__pos2, "basic_string::compare");
      __n1 = _M_limit(__pos1, __n1);
      __n2 = __str._M_limit(__pos2, __n2);
      const size_type __len = std::min(__n1, __n2);
      int __r = traits_type::compare(_M_data() + __pos1,
         __str.data() + __pos2, __len);
      if (!__r)
 __r = _S_compare(__n1, __n2);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string<_CharT, _Traits, _Alloc>::
    compare(const _CharT* __s) const
    {
                                    ;
      const size_type __size = this->size();
      const size_type __osize = traits_type::length(__s);
      const size_type __len = std::min(__size, __osize);
      int __r = traits_type::compare(_M_data(), __s, __len);
      if (!__r)
 __r = _S_compare(__size, __osize);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string <_CharT, _Traits, _Alloc>::
    compare(size_type __pos, size_type __n1, const _CharT* __s) const
    {
                                    ;
      _M_check(__pos, "basic_string::compare");
      __n1 = _M_limit(__pos, __n1);
      const size_type __osize = traits_type::length(__s);
      const size_type __len = std::min(__n1, __osize);
      int __r = traits_type::compare(_M_data() + __pos, __s, __len);
      if (!__r)
 __r = _S_compare(__n1, __osize);
      return __r;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    int
    basic_string <_CharT, _Traits, _Alloc>::
    compare(size_type __pos, size_type __n1, const _CharT* __s,
     size_type __n2) const
    {
                                              ;
      _M_check(__pos, "basic_string::compare");
      __n1 = _M_limit(__pos, __n1);
      const size_type __len = std::min(__n1, __n2);
      int __r = traits_type::compare(_M_data() + __pos, __s, __len);
      if (!__r)
 __r = _S_compare(__n1, __n2);
      return __r;
    }
#pragma empty_line
  // 21.3.7.9 basic_string::getline and operators
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    operator>>(basic_istream<_CharT, _Traits>& __in,
        basic_string<_CharT, _Traits, _Alloc>& __str)
    {
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __istream_type::ios_base __ios_base;
      typedef typename __istream_type::int_type __int_type;
      typedef typename __string_type::size_type __size_type;
      typedef ctype<_CharT> __ctype_type;
      typedef typename __ctype_type::ctype_base __ctype_base;
#pragma empty_line
      __size_type __extracted = 0;
      typename __ios_base::iostate __err = __ios_base::goodbit;
      typename __istream_type::sentry __cerb(__in, false);
      if (__cerb)
 {
   if (true)
     {
       // Avoid reallocation for common case.
       __str.erase();
       _CharT __buf[128];
       __size_type __len = 0;
       const streamsize __w = __in.width();
       const __size_type __n = __w > 0 ? static_cast<__size_type>(__w)
                                : __str.max_size();
       const __ctype_type& __ct = use_facet<__ctype_type>(__in.getloc());
       const __int_type __eof = _Traits::eof();
       __int_type __c = __in.rdbuf()->sgetc();
#pragma empty_line
       while (__extracted < __n
       && !_Traits::eq_int_type(__c, __eof)
       && !__ct.is(__ctype_base::space,
     _Traits::to_char_type(__c)))
  {
    if (__len == sizeof(__buf) / sizeof(_CharT))
      {
        __str.append(__buf, sizeof(__buf) / sizeof(_CharT));
        __len = 0;
      }
    __buf[__len++] = _Traits::to_char_type(__c);
    ++__extracted;
    __c = __in.rdbuf()->snextc();
  }
       __str.append(__buf, __len);
#pragma empty_line
       if (_Traits::eq_int_type(__c, __eof))
  __err |= __ios_base::eofbit;
       __in.width(0);
     }
   if (false)
     {
       __in._M_setstate(__ios_base::badbit);
                              ;
     }
   if (false)
     {
       // _GLIBCXX_RESOLVE_LIB_DEFECTS
       // 91. Description of operator>> and getline() for string<>
       // might cause endless loop
       __in._M_setstate(__ios_base::badbit);
     }
 }
      // 211.  operator>>(istream&, string&) doesn't set failbit
      if (!__extracted)
 __err |= __ios_base::failbit;
      if (__err)
 __in.setstate(__err);
      return __in;
    }
#pragma empty_line
  template<typename _CharT, typename _Traits, typename _Alloc>
    basic_istream<_CharT, _Traits>&
    getline(basic_istream<_CharT, _Traits>& __in,
     basic_string<_CharT, _Traits, _Alloc>& __str, _CharT __delim)
    {
      typedef basic_istream<_CharT, _Traits> __istream_type;
      typedef basic_string<_CharT, _Traits, _Alloc> __string_type;
      typedef typename __istream_type::ios_base __ios_base;
      typedef typename __istream_type::int_type __int_type;
      typedef typename __string_type::size_type __size_type;
#pragma empty_line
      __size_type __extracted = 0;
      const __size_type __n = __str.max_size();
      typename __ios_base::iostate __err = __ios_base::goodbit;
      typename __istream_type::sentry __cerb(__in, true);
      if (__cerb)
 {
   if (true)
     {
       __str.erase();
       const __int_type __idelim = _Traits::to_int_type(__delim);
       const __int_type __eof = _Traits::eof();
       __int_type __c = __in.rdbuf()->sgetc();
#pragma empty_line
       while (__extracted < __n
       && !_Traits::eq_int_type(__c, __eof)
       && !_Traits::eq_int_type(__c, __idelim))
  {
    __str += _Traits::to_char_type(__c);
    ++__extracted;
    __c = __in.rdbuf()->snextc();
  }
#pragma empty_line
       if (_Traits::eq_int_type(__c, __eof))
  __err |= __ios_base::eofbit;
       else if (_Traits::eq_int_type(__c, __idelim))
  {
    ++__extracted;
    __in.rdbuf()->sbumpc();
  }
       else
  __err |= __ios_base::failbit;
     }
   if (false)
     {
       __in._M_setstate(__ios_base::badbit);
                              ;
     }
   if (false)
     {
       // _GLIBCXX_RESOLVE_LIB_DEFECTS
       // 91. Description of operator>> and getline() for string<>
       // might cause endless loop
       __in._M_setstate(__ios_base::badbit);
     }
 }
      if (!__extracted)
 __err |= __ios_base::failbit;
      if (__err)
 __in.setstate(__err);
      return __in;
    }
#pragma empty_line
  // Inhibit implicit instantiations for required instantiations,
  // which are defined via explicit instantiations elsewhere.
#pragma empty_line
  extern template class basic_string<char>;
  extern template
    basic_istream<char>&
    operator>>(basic_istream<char>&, string&);
  extern template
    basic_ostream<char>&
    operator<<(basic_ostream<char>&, const string&);
  extern template
    basic_istream<char>&
    getline(basic_istream<char>&, string&, char);
  extern template
    basic_istream<char>&
    getline(basic_istream<char>&, string&);
#pragma empty_line
#pragma empty_line
  extern template class basic_string<wchar_t>;
  extern template
    basic_istream<wchar_t>&
    operator>>(basic_istream<wchar_t>&, wstring&);
  extern template
    basic_ostream<wchar_t>&
    operator<<(basic_ostream<wchar_t>&, const wstring&);
  extern template
    basic_istream<wchar_t>&
    getline(basic_istream<wchar_t>&, wstring&, wchar_t);
  extern template
    basic_istream<wchar_t>&
    getline(basic_istream<wchar_t>&, wstring&);
#pragma empty_line
#pragma empty_line
#pragma empty_line
#pragma empty_line
} // namespace std
#pragma line 55 "/home/Xilinx/Vivado_HLS/2016.2/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/string" 2 3
#pragma line 7 "/home/linux/Documents/DLA/source/sw/BigInt/solution1/bigint/./BigUnsignedInABase.hh" 2
#pragma empty_line
/*
 * A BigUnsignedInABase object represents a nonnegative integer of size limited
 * only by available memory, represented in a user-specified base that can fit
 * in an `unsigned short' (most can, and this saves memory).
 *
 * BigUnsignedInABase is intended as an intermediary class with little
 * functionality of its own.  BigUnsignedInABase objects can be constructed
 * from, and converted to, BigUnsigneds (requiring multiplication, mods, etc.)
 * and `std::string's (by switching digit values for appropriate characters).
 *
 * BigUnsignedInABase is similar to BigUnsigned.  Note the following:
 *
 * (1) They represent the number in exactly the same way, except that
 * BigUnsignedInABase uses ``digits'' (or Digit) where BigUnsigned uses
 * ``blocks'' (or Blk).
 *
 * (2) Both use the management features of NumberlikeArray.  (In fact, my desire
 * to add a BigUnsignedInABase class without duplicating a lot of code led me to
 * introduce NumberlikeArray.)
 *
 * (3) The only arithmetic operation supported by BigUnsignedInABase is an
 * equality test.  Use BigUnsigned for arithmetic.
 */
#pragma empty_line
class BigUnsignedInABase : protected NumberlikeArray<unsigned short> {
#pragma empty_line
public:
 // The digits of a BigUnsignedInABase are unsigned shorts.
 typedef unsigned short Digit;
 // That's also the type of a base.
 typedef Digit Base;
#pragma empty_line
protected:
 // The base in which this BigUnsignedInABase is expressed
 Base base;
#pragma empty_line
 // Creates a BigUnsignedInABase with a capacity; for internal use.
 BigUnsignedInABase(int, Index c) : NumberlikeArray<Digit>(0, c) {}
#pragma empty_line
 // Decreases len to eliminate any leading zero digits.
 void zapLeadingZeros() {
  while (len > 0 && blk[len - 1] == 0)
   len--;
 }
#pragma empty_line
public:
 // Constructs zero in base 2.
 BigUnsignedInABase() : NumberlikeArray<Digit>(), base(2) {}
#pragma empty_line
 // Copy constructor
 BigUnsignedInABase(const BigUnsignedInABase &x) : NumberlikeArray<Digit>(x), base(x.base) {}
#pragma empty_line
 // Assignment operator
 void operator =(const BigUnsignedInABase &x) {
  NumberlikeArray<Digit>::operator =(x);
  base = x.base;
 }
#pragma empty_line
 // Constructor that copies from a given array of digits.
 BigUnsignedInABase(const Digit *d, Index l, Base base);
#pragma empty_line
 // Destructor.  NumberlikeArray does the delete for us.
 ~BigUnsignedInABase() {}
#pragma empty_line
 // LINKS TO BIGUNSIGNED
 BigUnsignedInABase(const BigUnsigned &x, Base base);
 operator BigUnsigned() const;
#pragma empty_line
 /* LINKS TO STRINGS
	 *
	 * These use the symbols ``0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ'' to
	 * represent digits of 0 through 35.  When parsing strings, lowercase is
	 * also accepted.
	 *
	 * All string representations are big-endian (big-place-value digits
	 * first).  (Computer scientists have adopted zero-based counting; why
	 * can't they tolerate little-endian numbers?)
	 *
	 * No string representation has a ``base indicator'' like ``0x''.
	 *
	 * An exception is made for zero: it is converted to ``0'' and not the
	 * empty string.
	 *
	 * If you want different conventions, write your own routines to go
	 * between BigUnsignedInABase and strings.  It's not hard.
	 */
 operator std::string() const;
 BigUnsignedInABase(const std::string &s, Base base);
#pragma empty_line
public:
#pragma empty_line
 // ACCESSORS
 Base getBase() const { return base; }
#pragma empty_line
 // Expose these from NumberlikeArray directly.
 NumberlikeArray<Digit>::getCapacity;
 NumberlikeArray<Digit>::getLength;
#pragma empty_line
 /* Returns the requested digit, or 0 if it is beyond the length (as if
	 * the number had 0s infinitely to the left). */
 Digit getDigit(Index i) const { return i >= len ? 0 : blk[i]; }
#pragma empty_line
 // The number is zero if and only if the canonical length is zero.
 bool isZero() const { return NumberlikeArray<Digit>::isEmpty(); }
#pragma empty_line
 /* Equality test.  For the purposes of this test, two BigUnsignedInABase
	 * values must have the same base to be equal. */
 bool operator ==(const BigUnsignedInABase &x) const {
  return base == x.base && NumberlikeArray<Digit>::operator ==(x);
 }
 bool operator !=(const BigUnsignedInABase &x) const { return !operator ==(x); }
#pragma empty_line
};
#pragma line 2 "BigInt/solution1/bigint/BigUnsignedInABase.cc" 2
#pragma empty_line
BigUnsignedInABase::BigUnsignedInABase(const Digit *d, Index l, Base base)
 : NumberlikeArray<Digit>(d, l), base(base) {
 // Check the base
 //if (base < 2)
 //	throw "BigUnsignedInABase::BigUnsignedInABase(const Digit *, Index, Base): The base must be at least 2";
#pragma empty_line
 // Validate the digits.
 for (Index i = 0; i < l; i++)
 //	if (blk[i] >= base)
 //		throw "BigUnsignedInABase::BigUnsignedInABase(const Digit *, Index, Base): A digit is too large for the specified base";
#pragma empty_line
 // Eliminate any leading zeros we may have been passed.
 zapLeadingZeros();
}
#pragma empty_line
namespace {
 unsigned int bitLen(unsigned int x) {
  unsigned int len = 0;
  while (x > 0) {
   x >>= 1;
   len++;
  }
  return len;
 }
 unsigned int ceilingDiv(unsigned int a, unsigned int b) {
  return (a + b - 1) / b;
 }
}
#pragma empty_line
BigUnsignedInABase::BigUnsignedInABase(const BigUnsigned &x, Base base) {
 // Check the base
 //if (base < 2)
 //	throw "BigUnsignedInABase(BigUnsigned, Base): The base must be at least 2";
 this->base = base;
#pragma empty_line
 // Get an upper bound on how much space we need
 int maxBitLenOfX = x.getLength() * BigUnsigned::N;
 int minBitsPerDigit = bitLen(base) - 1;
 int maxDigitLenOfX = ceilingDiv(maxBitLenOfX, minBitsPerDigit);
 len = maxDigitLenOfX; // Another change to comply with `staying in bounds'.
 allocate(len); // Get the space
#pragma empty_line
 BigUnsigned x2(x), buBase(base);
 Index digitNum = 0;
#pragma empty_line
 while (!x2.isZero()) {
  // Get last digit.  This is like `lastDigit = x2 % buBase, x2 /= buBase'.
  BigUnsigned lastDigit(x2);
  lastDigit.divideWithRemainder(buBase, x2);
  // Save the digit.
  blk[digitNum] = lastDigit.toUnsignedShort();
  // Move on.  We can't run out of room: we figured it out above.
  digitNum++;
 }
#pragma empty_line
 // Save the actual length.
 len = digitNum;
}
#pragma empty_line
BigUnsignedInABase::operator BigUnsigned() const {
 BigUnsigned ans(0), buBase(base), temp;
 Index digitNum = len;
 while (digitNum > 0) {
  digitNum--;
  temp.multiply(ans, buBase);
  ans.add(temp, BigUnsigned(blk[digitNum]));
 }
 return ans;
}
#pragma empty_line
BigUnsignedInABase::BigUnsignedInABase(const std::string &s, Base base) {
 // Check the base.
 //if (base > 36)
 //	throw "BigUnsignedInABase(std::string, Base): The default string conversion routines use the symbol set 0-9, A-Z and therefore support only up to base 36.  You tried a conversion with a base over 36; write your own string conversion routine.";
 // Save the base.
 // This pattern is seldom seen in C++, but the analogous ``this.'' is common in Java.
 this->base = base;
#pragma empty_line
 // `s.length()' is a `size_t', while `len' is a `NumberlikeArray::Index',
 // also known as an `unsigned int'.  Some compilers warn without this cast.
 len = Index(s.length());
 allocate(len);
#pragma empty_line
 Index digitNum, symbolNumInString;
 for (digitNum = 0; digitNum < len; digitNum++) {
  symbolNumInString = len - 1 - digitNum;
  char theSymbol = s[symbolNumInString];
  if (theSymbol >= '0' && theSymbol <= '9')
   blk[digitNum] = theSymbol - '0';
  else if (theSymbol >= 'A' && theSymbol <= 'Z')
   blk[digitNum] = theSymbol - 'A' + 10;
  else if (theSymbol >= 'a' && theSymbol <= 'z')
   blk[digitNum] = theSymbol - 'a' + 10;
  //else
  //	throw "BigUnsignedInABase(std::string, Base): Bad symbol in input.  Only 0-9, A-Z, a-z are accepted.";
#pragma empty_line
  //if (blk[digitNum] >= base)
  //	throw "BigUnsignedInABase::BigUnsignedInABase(const Digit *, Index, Base): A digit is too large for the specified base";
 }
 zapLeadingZeros();
}
#pragma empty_line
BigUnsignedInABase::operator std::string() const {
 //if (base > 36)
 //	throw "BigUnsignedInABase ==> std::string: The default string conversion routines use the symbol set 0-9, A-Z and therefore support only up to base 36.  You tried a conversion with a base over 36; write your own string conversion routine.";
 if (len == 0)
  return std::string("0");
 // Some compilers don't have push_back, so use a char * buffer instead.
 char *s = new char[len + 1];
 s[len] = '\0';
 Index digitNum, symbolNumInString;
 for (symbolNumInString = 0; symbolNumInString < len; symbolNumInString++) {
  digitNum = len - 1 - symbolNumInString;
  Digit theDigit = blk[digitNum];
  if (theDigit < 10)
   s[symbolNumInString] = char('0' + theDigit);
  else
   s[symbolNumInString] = char('A' + theDigit - 10);
 }
 std::string s2(s);
 delete [] s;
 return s2;
}
