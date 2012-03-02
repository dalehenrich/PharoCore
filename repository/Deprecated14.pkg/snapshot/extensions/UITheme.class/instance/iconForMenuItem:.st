
!UITheme methodsFor: '*Deprecated14'!
iconForMenuItem: anItem
	"Answer the icon (or nil) corresponding to the (translated) string."
	| itemKey |
	itemKey := anItem contents asString asLowercase.
	^ (self menuIcons detect: [:cpl | cpl key includes: itemKey] ifNone: [])
		ifNotNil: [:assoc | assoc value].
! !
