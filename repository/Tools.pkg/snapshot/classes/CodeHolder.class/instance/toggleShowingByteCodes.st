
!CodeHolder methodsFor: 'what to show'!
toggleShowingByteCodes
	"Toggle whether the receiver is showing bytecodes"

	self showByteCodes: self showingByteCodes not.
	self setContentsToForceRefetch.
	self contentsChanged! !
