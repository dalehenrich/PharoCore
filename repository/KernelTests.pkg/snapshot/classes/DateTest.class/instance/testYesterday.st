
!DateTest methodsFor: 'testing'!
testYesterday
	"Not a great test:  doesnt catch many errors"
	self assert: Date yesterday  < Date today 
! !
