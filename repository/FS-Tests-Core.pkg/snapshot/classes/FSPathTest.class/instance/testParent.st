
!FSPathTest methodsFor: 'tests'!
testParent
	| path parent |
	path := (FSPath * 'plonk') / 'griffle'.
	parent := path parent.
	self assert: parent isRelative.
	self assert: (parent at: 1) = 'plonk'! !
