
!MessageList methodsFor: 'converting'!
groupedByDateDescending
	"update the instance variable"
	
	self groupedByDateDescendingSilently.
	self updateView.! !
