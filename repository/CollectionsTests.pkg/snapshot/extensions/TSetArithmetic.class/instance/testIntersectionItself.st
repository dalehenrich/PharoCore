
!TSetArithmetic methodsFor: 'tests - set arithmetic'!
testIntersectionItself
	"self debug: #testIntersectionItself"
	
	self assert: (self collection intersection: self collection) = self collection.
	! !
