
!DictionaryTest methodsFor: 'test - testing'!
testIncludeAssociation
	self assert: (nonEmptyDict includesAssociation: #a -> self elementTwiceIn).
	self assert: (nonEmptyDict includesAssociation: (nonEmptyDict associations first)).
! !
