
!HostSystemMenusMacOSX methodsFor: 'utility'!
disableHideMenuCmd
	| commandID menuRef menuItemIndex |

	"Comand ID for hide"

	commandID := MacOSType buildOSTypeFromCharString: 'hide'.
	menuRef := self getIndMenuWithCommandID: 0 item: commandID.
	menuItemIndex := self getIndMenuItemWithCommandID: 0 item: commandID.
	self setItemCmd: menuRef item: menuItemIndex cmdChar: 0.

! !
