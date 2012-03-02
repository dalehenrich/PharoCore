
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
insertMenuItem: menuHandleOop item: aItem afterItem: anInteger
	| str255 |
	str255 := self buildDataStringForAppendOrInsert: (OrderedCollection with: aItem).
	self resolveInsertOfMenuItem: aItem afterItem: anInteger forMenuHandle: menuHandleOop.
	self primInsertMenuItem: menuHandleOop itemString: str255 afterItem: anInteger.

! !
