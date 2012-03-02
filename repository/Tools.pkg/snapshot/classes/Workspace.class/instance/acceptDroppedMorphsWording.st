
!Workspace methodsFor: 'window menu'!
acceptDroppedMorphsWording

	^ self acceptsDroppingMorphForReference
		ifTrue: ['<yes> Create textual references to dropped morphs' translated]
		ifFalse: ['<no> Create textual references to dropped morphs' translated]
! !
