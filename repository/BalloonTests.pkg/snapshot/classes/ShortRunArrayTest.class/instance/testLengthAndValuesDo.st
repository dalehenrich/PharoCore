
!ShortRunArrayTest methodsFor: 'testing'!
testLengthAndValuesDo

	| lengthSum valueSum |
	lengthSum := 0.
	valueSum := 0.
	shortRunArray lengthsAndValuesDo: [:length :value| 
		lengthSum := lengthSum + length.
		valueSum := valueSum + value.
		 ].
	self assert: 3+ 1 + 2 + 2 + 7 equals: lengthSum.
	self assert: 1 + 2 + 3 + 1 + 10 equals: valueSum.! !
