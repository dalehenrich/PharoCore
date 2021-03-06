
!Integer methodsFor: 'truncation and round off'!
atRandom
	"Answer a random integer from 1 to self.  This implementation uses a
	shared generator. Heavy users should their own implementation or use
	Interval>atRandom: directly."

	self = 0 ifTrue: [ ^0 ].
	self < 0 ifTrue: [ ^self negated atRandom negated ].
	^Collection mutexForPicking critical: [
		self atRandom: Collection randomForPicking ]! !
