
!HostSystemMenusMacOSX methodsFor: 'utility'!
enableApplicationQuit: aMenuRef 
	| commandID |

	commandID := MacOSType buildOSTypeFromCharString: 'quit'.
	self enableMenuCommand: aMenuRef command: commandID.
	
	! !
