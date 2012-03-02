
!TestRunner methodsFor: 'actions'!
runProfiled
	MessageTally spyOn: [ self runAll ].! !
