
!TextDiffBuilderTest methodsFor: 'tests'!
testEmptySequences

	| patch |
	patch := self patchSequenceFor: #() and: #().
	self assert: patch isEmpty! !
