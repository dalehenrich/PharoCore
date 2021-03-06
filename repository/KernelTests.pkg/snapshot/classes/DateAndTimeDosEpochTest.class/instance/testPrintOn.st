
!DateAndTimeDosEpochTest methodsFor: 'testing'!
testPrintOn
	| cs rw |
	cs := '1980-01-01T00:00:00+00:00' readStream.
	rw := ReadWriteStream on: ''.
	aDateAndTime printOn: rw.
	self assert: rw contents = cs contents.
	cs := 'a TimeZone(DTZ)' readStream.
	rw := ReadWriteStream on: ''.
	aTimeZone printOn: rw.
	self assert: rw contents = cs contents! !
