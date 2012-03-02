
!LogicalFont methodsFor: 'testing'!
isBoldOrBolder
	^(weightValue ifNil:[400]) >= 700! !
