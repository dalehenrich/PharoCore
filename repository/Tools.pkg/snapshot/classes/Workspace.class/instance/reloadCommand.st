
!Workspace methodsFor: 'window menu'!
reloadCommand
	"Replaces unsaved content with the content of the associated file"
	
	self warnUser ifTrue: [self openFile: self fileName]! !
