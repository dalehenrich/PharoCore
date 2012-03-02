
!FreeTypeCache class methodsFor: 'accessing'!
current
	current isNil ifFalse:[^current].
	^current := self new! !
