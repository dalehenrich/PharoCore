
!RxParser class methodsFor: 'exception signaling'!
signalCompilationException: errorString
	RegexCompilationError new signal: errorString! !
