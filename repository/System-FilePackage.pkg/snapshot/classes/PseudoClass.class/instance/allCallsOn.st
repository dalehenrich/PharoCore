
!PseudoClass methodsFor: 'accessing'!
allCallsOn
	^ (self realClass ifNil: [ ^#() ]) allCallsOn! !
