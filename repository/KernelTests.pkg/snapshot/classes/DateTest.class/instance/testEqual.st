
!DateTest methodsFor: 'testing'!
testEqual
	self assert: aDate = (Date readFrom: 'January 23, 2004' readStream)! !
