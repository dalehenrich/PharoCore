
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
setItemCmd: menuHandleOop item: anInteger cmdChar: anIntegerCmdChar
	self primSetItemCmd: menuHandleOop item: anInteger cmdChar: anIntegerCmdChar asCharacter asInteger
	
! !
