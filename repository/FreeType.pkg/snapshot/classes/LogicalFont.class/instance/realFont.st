
!LogicalFont methodsFor: 'accessing'!
realFont
	^realFont ifNil:[realFont := self findRealFont]! !
