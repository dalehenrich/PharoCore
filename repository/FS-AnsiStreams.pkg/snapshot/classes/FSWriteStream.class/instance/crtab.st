
!FSWriteStream methodsFor: 'character writing'!
crtab
	"Append a return character, followed by a single tab character, to the 
	receiver."

	self nextPut: 13.
	self nextPut: Character tab! !
