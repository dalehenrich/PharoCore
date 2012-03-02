
!TSetArithmetic methodsFor: 'tests - set arithmetic'!
testDifference
	"Answer the set theoretic difference of two collections."
	"self debug: #testDifference"
	
	self assert: (self collection difference: self collection) isEmpty.
	self assert: (self empty difference: self collection) isEmpty.
	self assert: (self collection difference: self empty) = self collection	
! !
