
!MultiCharacterScanner methodsFor: 'scanning'!
handleIndentation
	self indentationLevel timesRepeat: [
		self plainTab]! !
