
!TestResult methodsFor: 'initialization'!
initialize
	super initialize.
	passed := OrderedCollection new.
	failures := Set new.
	errors := OrderedCollection new.
	timeStamp := DateAndTime now! !
