
!HostSystemMenusMacOSX methodsFor: 'utility'!
disableApplicationHide: aMenuRef 
		"Disable the hide cmd key"
	| commandID menuItemIndex |

	commandID := MacOSType buildOSTypeFromCharString: 'hide'.
	menuItemIndex := self getIndMenuItemWithCommandID: aMenuRef item: commandID.
	self setItemCmd: aMenuRef item: menuItemIndex cmdChar: 0.
! !
