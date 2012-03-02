
!MethodContextTest methodsFor: 'tests'!
testTempNamed
	| oneTemp |
	
	oneTemp := 1.
	self assert: (thisContext tempNamed: 'oneTemp') = oneTemp.
	! !
