
!MessageList methodsFor: 'converting'!
groupedByVersion
	"update the instance variable"
	
	self groupedByVersionSilently.
	self updateView! !
