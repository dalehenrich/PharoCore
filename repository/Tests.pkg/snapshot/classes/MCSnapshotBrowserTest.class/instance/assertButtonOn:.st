
!MCSnapshotBrowserTest methodsFor: 'asserting'!
assertButtonOn: aString
	self assert: (self findButtonWithLabel: aString) getModelState.
	! !
