
!HostSystemMenusMacOSX methodsFor: 'handlers'!
resolveAppendOfMenuItems: aCollection forMenuHandle: aMenuHandle
	| previousItems menuID |
	
	previousItems := self countMenuItems: aMenuHandle.
	menuID := self getMenuID:  aMenuHandle.
	1 to: aCollection size do: 
		[:i | self setHandlerForMenu: menuID item: i + previousItems handler: (aCollection at: i)]
	! !
