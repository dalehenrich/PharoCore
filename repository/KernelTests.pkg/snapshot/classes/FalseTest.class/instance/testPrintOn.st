
!FalseTest methodsFor: 'tests'!
testPrintOn

	self assert: (String streamContents: [:stream | false printOn: stream]) = 'false'. ! !
