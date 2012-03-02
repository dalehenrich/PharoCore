
!DateTest methodsFor: 'testing'!
testLessThan
	self assert: aDate < (Date readFrom: '01-24-2004' readStream)! !
