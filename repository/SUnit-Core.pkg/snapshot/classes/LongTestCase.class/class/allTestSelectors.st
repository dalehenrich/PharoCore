
!LongTestCase class methodsFor: 'accessing'!
allTestSelectors
	self shouldRun ifTrue: [
		^super testSelectors].
	^#().! !
