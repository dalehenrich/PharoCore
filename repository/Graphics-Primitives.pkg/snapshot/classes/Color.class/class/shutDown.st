
!Color class methodsFor: 'other'!
shutDown
	"Color shutDown"
	CachedColormaps := nil.	"Maps to translate between color depths"
	MaskingMap := nil	"Maps all colors except transparent to black for creating a mask"! !
