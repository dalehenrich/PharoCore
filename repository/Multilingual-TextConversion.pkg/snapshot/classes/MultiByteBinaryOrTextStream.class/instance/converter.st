
!MultiByteBinaryOrTextStream methodsFor: 'accessing'!
converter

	converter ifNil: [converter := self class defaultConverter].
	^ converter
! !
