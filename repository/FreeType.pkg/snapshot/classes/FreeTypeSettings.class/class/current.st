
!FreeTypeSettings class methodsFor: 'instance creation'!
current
	current == nil ifFalse:[^current].
	^current := self new! !
