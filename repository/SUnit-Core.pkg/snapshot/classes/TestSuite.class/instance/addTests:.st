
!TestSuite methodsFor: 'accessing'!
addTests: aCollection 
	aCollection do: [:eachTest | self addTest: eachTest]! !
