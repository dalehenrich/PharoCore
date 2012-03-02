
!DateTest methodsFor: 'testing'!
testTomorrow
	"Not a great test: could falsely fail if midnight come in between the two executions and doesnt catch many errors"
	self assert: Date tomorrow  > Date today 
! !
