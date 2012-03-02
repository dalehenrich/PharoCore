
!ZnBufferedWriteStream methodsFor: 'initialize-release'!
close
	self flushBuffer.
	stream close! !
