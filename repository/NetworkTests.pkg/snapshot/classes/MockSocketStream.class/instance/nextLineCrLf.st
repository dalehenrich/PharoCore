
!MockSocketStream methodsFor: 'stream in'!
nextLineCrLf
	^(self upToAll: String crlf).! !
