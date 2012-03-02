
!FilePackage class methodsFor: 'conflict checker logging'!
closeLog
	self logFileStream close.
	LogFileStream := nil.! !
