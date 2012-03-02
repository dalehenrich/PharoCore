
!DateTest methodsFor: 'testing'!
testPrintOnFormat
	| cs rw |
	cs := '04*Jan*23' readStream.
	rw := ReadWriteStream on: ''.
	aDate 
		printOn: rw
		format: #(3 2 1 $* 2 2 ).
	self assert: rw contents = cs contents! !
