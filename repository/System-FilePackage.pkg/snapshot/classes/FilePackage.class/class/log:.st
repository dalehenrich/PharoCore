
!FilePackage class methodsFor: 'conflict checker logging'!
log: aString
	Transcript show: aString.
	self logFileStream nextPutAll: aString.
! !
