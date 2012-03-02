
!Heap methodsFor: 'copying'!
postCopy
	super postCopy.
	array := array copy! !
