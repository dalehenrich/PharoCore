
!Morph methodsFor: 'macpal'!
flash
	| c w |
	c := self color.
	self color: Color black.
	(w := self world) ifNotNil: [w displayWorldSafely].
	self color: c
! !
