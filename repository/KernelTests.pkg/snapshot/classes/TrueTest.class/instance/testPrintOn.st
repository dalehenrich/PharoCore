
!TrueTest methodsFor: 'testing'!
testPrintOn

	self assert: (String streamContents: [:stream | true printOn: stream]) = 'true'. ! !
