
!DurationTest methodsFor: 'testing'!
testAsMinutes
	self assert: (Duration seconds: 60) asMinutes = 1.
	self assert: (Duration hours: 1) asMinutes = 60.	
	self assert: (aDuration asMinutes closeTo:  1563.0666).! !
