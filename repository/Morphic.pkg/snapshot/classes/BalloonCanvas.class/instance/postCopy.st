
!BalloonCanvas methodsFor: 'copying'!
postCopy
	self flush.
	super postCopy.
	self resetEngine! !
