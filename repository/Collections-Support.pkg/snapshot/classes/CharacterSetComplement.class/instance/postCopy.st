
!CharacterSetComplement methodsFor: 'copying'!
postCopy
	super postCopy.
	absent := absent copy! !
