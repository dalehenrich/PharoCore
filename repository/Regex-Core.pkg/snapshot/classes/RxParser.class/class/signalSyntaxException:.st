
!RxParser class methodsFor: 'exception signaling'!
signalSyntaxException: errorString
	RegexSyntaxError new signal: errorString! !
