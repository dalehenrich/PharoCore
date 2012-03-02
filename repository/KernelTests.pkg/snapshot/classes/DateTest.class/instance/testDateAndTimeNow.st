
!DateTest methodsFor: 'testing'!
testDateAndTimeNow
	"Not a great test: could falsely fail if midnight come in between the two executions and doesnt catch time errors"
	self assert: Date dateAndTimeNow first  = Date today 
! !
