
!Delay methodsFor: 'printing'!
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '('; print: delayDuration; nextPutAll: ' msecs'.
	beingWaitedOn ifTrue:[
		aStream nextPutAll: '; '; print: resumptionTime - Time millisecondClockValue; nextPutAll: ' msecs remaining'.
	].
	aStream nextPutAll: ')'.! !
