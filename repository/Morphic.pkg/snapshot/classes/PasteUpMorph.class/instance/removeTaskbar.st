
!PasteUpMorph methodsFor: 'taskbar'!
removeTaskbar
	"Remove the receiver's taskbars."
	
	self taskbars do: [:each | each removeFromWorld]! !
