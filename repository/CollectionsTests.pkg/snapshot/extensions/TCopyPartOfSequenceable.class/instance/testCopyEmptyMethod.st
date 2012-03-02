
!TCopyPartOfSequenceable methodsFor: 'tests - copying part of sequenceable'!
testCopyEmptyMethod
	| result |
	result := self collectionWithoutEqualsElements  copyEmpty .
	self assert: result isEmpty .
	self assert: result class= self nonEmpty class.! !
