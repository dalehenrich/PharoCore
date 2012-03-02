
!LogoImageMorph class methodsFor: 'defaultinstance'!
installDesktopLogo
	"Install the new logo with the settings"
	"self installDesktopLogo"
	default 
		ifNotNil: [default delete. 
		default := nil.
		PolymorphSystemSettings showDesktopLogo: true]
! !
