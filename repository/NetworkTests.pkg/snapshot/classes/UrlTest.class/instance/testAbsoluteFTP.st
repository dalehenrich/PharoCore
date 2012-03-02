
!UrlTest methodsFor: 'tests'!
testAbsoluteFTP
	
	url := 'ftP://some.server/some/directory/' asUrl.

	self assert: url schemeName = 'ftp'.
	self assert: url class = FtpUrl.
	self assert: url authority = 'some.server'.	
	self assert: url path first = 'some'.
	self assert: url path size  = 3.
	! !
