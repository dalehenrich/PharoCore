
!LogicalFontManager class methodsFor: 'accessing'!
unload
	current ifNotNil: [current initialize].
	current := nil.
! !
