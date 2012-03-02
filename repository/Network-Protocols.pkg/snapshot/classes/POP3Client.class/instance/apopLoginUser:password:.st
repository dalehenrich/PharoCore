
!POP3Client methodsFor: 'public protocol'!
apopLoginUser: userName password: password

	self loginUser: userName password: password loginMethod: #APOP! !
