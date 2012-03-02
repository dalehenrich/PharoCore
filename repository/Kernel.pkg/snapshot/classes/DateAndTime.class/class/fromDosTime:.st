
!DateAndTime class methodsFor: 'instance creation'!
fromDosTime: anInteger
	^ self fromSeconds: anInteger + 
		2492992800 "dos epoch constant"! !
