
!ProtocolBrowser methodsFor: 'accessing'!
selector: aString
	"Set the currently selected message selector to be aString."
	selectedSelector := aString.
	self changed: #selector! !
