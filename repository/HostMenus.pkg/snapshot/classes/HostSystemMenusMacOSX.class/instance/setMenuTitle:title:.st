
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
setMenuTitle: menuHandleOop  title: aMenuText
	| str255 |
	
	str255 := self convertToStr255: aMenuText.
	self primSetMenuTitle: menuHandleOop  title: str255
	
! !
