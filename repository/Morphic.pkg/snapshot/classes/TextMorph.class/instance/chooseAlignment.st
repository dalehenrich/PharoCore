
!TextMorph methodsFor: 'editing'!
chooseAlignment
	"Interactively change alignment."
	
	self editor changeAlignment.
	self updateFromParagraph! !
