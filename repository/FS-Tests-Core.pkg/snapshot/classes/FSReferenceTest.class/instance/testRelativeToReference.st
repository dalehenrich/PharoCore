
!FSReferenceTest methodsFor: 'tests'!
testRelativeToReference
	| parent child relative |
	parent := filesystem / 'griffle'.
	child := filesystem  / 'griffle' / 'plonk' / 'nurb'.
	relative := child relativeTo: parent.
	self assert: relative = (FSPath * 'plonk' / 'nurb')! !
