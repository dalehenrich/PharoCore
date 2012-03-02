
!HostSystemMenusMacOSX methodsFor: 'utility'!
appendStandardWindowMenu: inOptions
	| commandID menuItemIndex windowMenu xID x |
	
	"See http://developer.apple.com/documentation/Carbon/Reference/Carbon:=Event:=Manager:=Ref/CarbonEventsRef/enum:=group:=5.html"
	"Install standard window menu, 
	Disable minimize window menu key,
	Disable hide application cmd key
	Note that after 10.2.x to alter the standard window menu you must do a getIndMenuItemWithCommandID:item: to have the menu built. Also it appears we must do a getMenuID/getMenuHandle to grab the correct handle, versus the template"

	"Build the standard Window menu and disable minimize cmd key"
	windowMenu := self createStandardWindowMenu: inOptions. 
	self insertMenu: windowMenu beforeID: 0.
	xID := self getMenuID: windowMenu.
	x := self getMenuHandle: xID. 

	commandID := MacOSType buildOSTypeFromCharString: 'mini'.
	menuItemIndex := self getIndMenuItemWithCommandID: x item: commandID.
	self setItemCmd: x item: 1 cmdChar: 0.
! !
