
!WeakRegistry methodsFor: 'enumerating'!
do: aBlock
	^self protected: [
		valueDictionary keysDo: aBlock.
	].
! !
