
!RectangleTest methodsFor: 'tests'!
testStoreOn

	| assoc assoc2 |
	assoc := (0@0 extent: 1@1) -> 0.
	self shouldnt: [assoc2 := self class evaluatorClass evaluate: assoc storeString] raise: Error.
	self assert: assoc key = assoc2 key.
	self assert: assoc value = assoc2 value.! !
