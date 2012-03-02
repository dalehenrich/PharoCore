
!Text methodsFor: 'copying'!
postCopy
	super postCopy.
	string := string copy.
	runs := runs copy! !
