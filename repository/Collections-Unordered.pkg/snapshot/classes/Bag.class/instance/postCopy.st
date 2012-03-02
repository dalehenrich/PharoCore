
!Bag methodsFor: 'copying'!
postCopy
	super postCopy.
	contents := contents copy! !
