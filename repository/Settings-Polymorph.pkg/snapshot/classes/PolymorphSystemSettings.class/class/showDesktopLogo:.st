
!PolymorphSystemSettings class methodsFor: 'desktop'!
showDesktopLogo: aBoolean
	ShowDesktopLogo = aBoolean ifTrue: [^ self].
	ShowDesktopLogo := aBoolean.
	self desktopLogoChanged! !
