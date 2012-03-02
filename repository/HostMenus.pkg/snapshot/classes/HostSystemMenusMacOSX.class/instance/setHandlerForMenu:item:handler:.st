
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
setHandlerForMenu: aMenuID item: anItem handler: aHandler
	| menu |
	
	menu := self menus at: aMenuID ifAbsentPut: [Dictionary new].
	menu at: anItem put: aHandler


! !
