
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
setMenuItemText: menuHandleOop item: anInteger itemString: aMenuItemText
	| str255 |
	
	str255 := self convertToStr255: aMenuItemText.
	self primSetMenuItemText: menuHandleOop item: anInteger itemString: str255
	
! !
