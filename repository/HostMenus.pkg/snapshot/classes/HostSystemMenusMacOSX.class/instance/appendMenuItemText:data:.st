
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
appendMenuItemText: menuHandleOop data: menuItemText
	| str255 |
	
	str255 := self convertToStr255: menuItemText.
 	^self primAppendMenuItemText: menuHandleOop data: str255! !
