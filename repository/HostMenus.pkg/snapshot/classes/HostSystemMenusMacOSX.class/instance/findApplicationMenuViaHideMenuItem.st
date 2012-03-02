
!HostSystemMenusMacOSX methodsFor: 'utility'!
findApplicationMenuViaHideMenuItem
	| commandID menuRef |

	commandID := MacOSType buildOSTypeFromCharString: 'hide'.
	menuRef := self getIndMenuWithCommandID: 0 item: commandID.
	^menuRef
! !
