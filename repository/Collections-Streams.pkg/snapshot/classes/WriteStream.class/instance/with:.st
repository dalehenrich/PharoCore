
!WriteStream methodsFor: 'private'!
with: aCollection

	super on: aCollection.
	position := readLimit := writeLimit := aCollection size! !
