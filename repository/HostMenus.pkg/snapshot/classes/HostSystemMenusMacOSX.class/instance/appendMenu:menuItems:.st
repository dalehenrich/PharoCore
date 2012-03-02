
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
appendMenu: aMenuHandle menuItems: aCollection
	| str255  |
	
	aCollection do: [:e | |subCollection|
		subCollection := OrderedCollection with: e.
		str255 := self buildDataStringForAppendOrInsert: subCollection.
		self resolveAppendOfMenuItems: subCollection forMenuHandle: aMenuHandle.
		self primAppendMenu: aMenuHandle data: str255].
 ! !
