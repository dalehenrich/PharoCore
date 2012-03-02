
!TestRunner methodsFor: 'accessing-testing'!
errorList
	^ errorList collect: [ :each | each printString ].! !
