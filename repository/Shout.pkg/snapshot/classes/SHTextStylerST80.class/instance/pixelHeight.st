
!SHTextStylerST80 methodsFor: 'private'!
pixelHeight
	^ pixelHeight
		ifNil: [pixelHeight := (font
						ifNil: [TextStyle defaultFont]) pixelSize]! !
