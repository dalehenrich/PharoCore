
!ZnBufferedWriteStream methodsFor: 'accessing'!
flush
	self flushBuffer.
	stream flush! !
