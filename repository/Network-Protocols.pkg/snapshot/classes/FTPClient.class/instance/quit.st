
!FTPClient methodsFor: 'protocol'!
quit
	self sendCommand: 'QUIT'.
	self close! !
