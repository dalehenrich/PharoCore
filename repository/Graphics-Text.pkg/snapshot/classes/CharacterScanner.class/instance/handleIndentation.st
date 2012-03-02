
!CharacterScanner methodsFor: 'scanning'!
handleIndentation
	self indentationLevel timesRepeat: [
		self plainTab]! !
