
!FTPClient methodsFor: 'protocol'!
abortDataConnection
	self sendCommand: 'ABOR'.
	self closeDataSocket! !
