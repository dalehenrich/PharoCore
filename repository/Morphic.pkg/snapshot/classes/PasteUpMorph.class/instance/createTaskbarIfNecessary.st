
!PasteUpMorph methodsFor: 'taskbar'!
createTaskbarIfNecessary
	"Private - create a new taskbar if not present."

	self taskbars ifEmpty: [
		TaskbarMorph new openInWorld: self.
		self moveCollapsedWindowsToTaskbar]! !
