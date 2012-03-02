
!HostSystemMenusMacOSX methodsFor: 'initialize-release'!
initialize
	| menuHandle |
	super initialize.
	menus := Dictionary new.
	self alterMenus.
	self menuBar.
	menuHandle := self getMenuHandle: 3.
	self enableMenuItem: menuHandle item: 1.
	self enableMenuItem: menuHandle item: 3.
	self enableMenuItem: menuHandle item: 4.
	self enableMenuItem: menuHandle item: 5.
	self drawMenuBar.
! !
