
!HostSystemMenusMacOSX methodsFor: 'handlers'!
resolveInsertOfMenuItem: aMenuItem afterItem: anIndex forMenuHandle: aMenuHandle
	| menuID count workList item |
	
	menuID := self getMenuID:  aMenuHandle.
	count := (self menus at: menuID) size.
	workList := OrderedCollection new. 
	1 to: count do: [:i |
		item := self getHandlerForMenu: menuID item: i.
		i = (anIndex+1) ifTrue: [workList add: aMenuItem].
		workList add: item].
	count = anIndex ifTrue: [workList add: aMenuItem].
	1 to: count + 1 do: [:i |
		self setHandlerForMenu: menuID item: i handler: (workList at: i)]
	! !
