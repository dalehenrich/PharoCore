
!ZipEncoder methodsFor: 'initialization'!
flush
	self flushBits.
	self commit.! !
