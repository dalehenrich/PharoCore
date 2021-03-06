
!LargePositiveInteger methodsFor: 'converting'!
asFloat
	"Answer a Float that best approximates the value of the receiver.
	This algorithm is optimized to process only the significant digits of a LargeInteger.
	And it does honour IEEE 754 round to nearest even mode in case of excess precision (see details below)."
	
	"How numbers are rounded in IEEE 754 default rounding mode:
	A shift is applied so that the highest 53 bits are placed before the floating point to form a mantissa.
	The trailing bits form the fraction part placed after the floating point.
	This fractional number must be rounded to the nearest integer.
	If fraction part is 2r0.1, exactly between two consecutive integers, there is a tie.
	The nearest even integer is chosen in this case.
	Examples (First 52bits of mantissa are omitted for brevity):
	2r0.00001 is rounded downward to 2r0
	2r1.00001 is rounded downward to 2r1
	2r0.1 is a tie and rounded to 2r0 (nearest even)
	2r1.1 is a tie and rounded to 2r10 (nearest even)
	2r0.10001 is rounded upward to 2r1
	2r1.10001 is rounded upward to 2r10
	Thus, if the next bit after floating point is 0, the mantissa is left unchanged.
	If next bit after floating point is 1, an odd mantissa is always rounded upper.
	An even mantissa is rounded upper only if the fraction part is not a tie."
	
	"Algorihm details:
	Floating point hardware will correctly handle the rounding by itself with a single inexact operation if mantissa has one excess bit of precision.
	Except in the last case when extra bits are present after an even mantissa, we must round upper by ourselves.
	Note 1: the inexact flag in floating point hardware must not be trusted because it won't take into account the bits we truncated by ourselves.
	Note 2: the floating point hardware is presumed configured in default rounding mode."
	
	| mantissa shift sum excess |

	"Check how many bits excess the maximum precision of a Float mantissa."
	excess := self highBitOfMagnitude - Float precision.
	excess > 1
		ifTrue:
			["Remove the excess bits but one."
			mantissa := self bitShift: 1 - excess.
			shift := excess - 1.
			"Handle the case of extra bits truncated after an even mantissa."
			((mantissa bitAnd: 2r11) = 2r01 and: [self anyBitOfMagnitudeFrom: 1 to: shift])
				ifTrue: [mantissa := mantissa + 1]]
		ifFalse:
			[mantissa := self.
			shift := 0].

	"Now that mantissa has at most 1 excess bit of precision, let floating point operations perform the final rounding."
	sum := 0.0.
	1 to: mantissa digitLength do:
		[:byteIndex | 
		sum := sum + ((mantissa digitAt: byteIndex) asFloat timesTwoPower: shift).
		shift := shift + 8].
	^sum! !
