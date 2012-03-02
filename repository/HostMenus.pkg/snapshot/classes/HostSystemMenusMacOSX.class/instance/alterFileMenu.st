
!HostSystemMenusMacOSX methodsFor: 'building-menus'!
alterFileMenu 
	| fileMenu |	

	fileMenu := self getMenuHandle: 2.
	self deleteMenu: fileMenu.! !
