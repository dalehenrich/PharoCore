
!FreeTypeSystemSettings class methodsFor: 'settings'!
ft2LibraryVersion
	^ UITheme current  newLabelIn: World for: self label: 'Available version: ', FT2Version current libraryVersion asString getEnabled: nil.! !
