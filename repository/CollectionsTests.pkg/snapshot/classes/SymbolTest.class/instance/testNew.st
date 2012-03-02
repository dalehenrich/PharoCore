
!SymbolTest methodsFor: 'requirements'!
testNew
	"self debug: #testNew"

	
	self should: [Symbol new: 5 ] raise: TestResult error. ! !
