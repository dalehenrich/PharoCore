
!DropListMorph methodsFor: 'accessing'!
wrapSelector: aSymbol
	"Set the wrap selector used in the list and content."
	
	self listMorph wrapSelector: aSymbol.
	self updateContents! !
