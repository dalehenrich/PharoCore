
!ClassQueryTest methodsFor: 'tests'!
testAllCallsOn

	| set |
	set := Beeper allCallsOn.
	self assert: (set allSatisfy: [ :cm | (cm compiledMethod literals
									select: [ :l | l isKindOf: Association ]
									thenCollect: #value)
										 includes: Beeper])! !
