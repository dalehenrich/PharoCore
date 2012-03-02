
!StrikeFontSet methodsFor: 'copying'!
postCopy
	super postCopy.
	self reset.
	fontArray := fontArray copy! !
