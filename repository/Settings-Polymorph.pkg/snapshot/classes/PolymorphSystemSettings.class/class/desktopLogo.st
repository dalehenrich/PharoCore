
!PolymorphSystemSettings class methodsFor: 'desktop'!
desktopLogo
	^ DesktopLogo ifNil: [self showDesktopLogo ifTrue: [DesktopLogo := self pharoLogo]]	! !
