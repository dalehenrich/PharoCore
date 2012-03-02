
!DateTest methodsFor: 'testing'!
testPrintFormat
	self assert: (aDate printFormat: #(1 2 3 $? 2 2)) =  '23?Jan?04'! !
