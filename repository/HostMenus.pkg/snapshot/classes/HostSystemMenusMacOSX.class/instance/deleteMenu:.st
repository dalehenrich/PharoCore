
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
deleteMenu: aMenuHandle
		| menuID |
	menuID := self getMenuID: aMenuHandle.
	self menus removeKey: menuID ifAbsent: [nil].
	self primDeleteMenu: menuID.
	self primDisposeMenu: aMenuHandle.
! !
