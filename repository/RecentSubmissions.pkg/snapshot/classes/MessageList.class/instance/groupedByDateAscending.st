
!MessageList methodsFor: 'converting'!
groupedByDateAscending
	"update the instance variable"
	
	self groupedByDateAscendingSilently.
	self updateView.! !
