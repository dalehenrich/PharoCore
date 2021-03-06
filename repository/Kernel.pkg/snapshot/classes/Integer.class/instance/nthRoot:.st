
!Integer methodsFor: 'mathematical functions'!
nthRoot: aPositiveInteger
	"Answer the nth root of the receiver.
	See #nthRootAlt: for an alternative implementation."

	| selfAsFloat floatResult guess delta higher lower raised |
	selfAsFloat := self asFloat.

	"If we can't do Float arithmetic because we are too big, then look for an exact answer in exact arithmetic"
	selfAsFloat isInfinite ifTrue: [
		guess := self nthRootTruncated: aPositiveInteger.
		(guess raisedToInteger: aPositiveInteger) = self
			ifTrue: [ ^ guess ].
		"Nothing else can be done. No exact answer means answer must be a Float.
		Answer the best we have."
		^guess asFloat ].

	floatResult := selfAsFloat nthRoot: aPositiveInteger.
	guess := floatResult rounded.

	"If got an exact answer, answer it."
	raised := guess raisedToInteger: aPositiveInteger.
	raised = self
		ifTrue: [ ^ guess ].

	"In this case, maybe it failed because we are such a big integer that the Float
	method gets inexact, even if we are a whole square number.
	Note 1(jmv): This algorithm is faster than #nthRootTruncated: for big n (aPositiveInteger)
	but fails if self asFloat isInfinite.
	Note 2(jmv): The algorithms I found for computing the nthRoot would havily use
	very large fractions. I wrote this one, that doesn't create fractions."
	selfAsFloat abs >= (Float maxExactInteger asFloat raisedToInteger: aPositiveInteger)
		ifTrue: [
			raised > self
				ifTrue: [
					higher := guess.
					delta :=  floatResult predecessor - floatResult.
					[
						floatResult := floatResult + delta.
						lower := floatResult rounded.
						(lower raisedToInteger: aPositiveInteger) > self ] whileTrue: [
							delta := delta * 2.
							higher := lower ] ]
				ifFalse: [
					lower := guess.
					delta :=  floatResult successor - floatResult.
					[
						floatResult := floatResult + delta.
						higher := floatResult rounded.
						(higher raisedToInteger: aPositiveInteger) < self ] whileTrue: [
							delta := delta * 2.
							lower := higher ]].
			[ higher - lower > 1 ] whileTrue: [
				guess := lower + higher // 2.
				raised := guess raisedToInteger: aPositiveInteger.
				raised = self
					ifTrue: [
						^ guess ].
				raised > self
					ifTrue: [ higher := guess ]
					ifFalse: [ lower := guess ]]].

	"We need an approximate result"
	^floatResult! !
