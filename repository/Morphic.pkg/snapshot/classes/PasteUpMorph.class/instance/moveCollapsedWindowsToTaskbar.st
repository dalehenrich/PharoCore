
!PasteUpMorph methodsFor: 'taskbar'!
moveCollapsedWindowsToTaskbar
	"Move collapsed windows to the taskbar."
	
	(self systemWindows select: [:w | w isCollapsed]) do: [:w |
		w restore; minimize]! !
