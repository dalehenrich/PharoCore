
!DateTest methodsFor: 'testing'!
testStarting
	self assert: aDate = (Date starting: (DateAndTime fromString: '2004-01-23T12:12')).  ! !
