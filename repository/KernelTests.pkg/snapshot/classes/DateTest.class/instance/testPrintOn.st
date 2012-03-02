
!DateTest methodsFor: 'testing'!
testPrintOn
	| cs rw |
	cs := '23 January 2004' readStream.
	rw := ReadWriteStream on: ''.
	aDate printOn: rw.
	self assert: rw contents = cs contents! !
