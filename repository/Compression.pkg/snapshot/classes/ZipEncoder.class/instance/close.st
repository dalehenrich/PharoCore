
!ZipEncoder methodsFor: 'initialization'!
close
	self flush.
	encodedStream close.! !
