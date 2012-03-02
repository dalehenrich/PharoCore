
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
setMenuItemModifiers: menuHandleOop item: anInteger inModifiers: modifers
	| modifiersInteger |
	modifiersInteger := self resolveModifiersInteger: modifers.
	self primSetMenuItemModifiers: menuHandleOop item: anInteger inModifiers:  modifiersInteger 
	
! !
