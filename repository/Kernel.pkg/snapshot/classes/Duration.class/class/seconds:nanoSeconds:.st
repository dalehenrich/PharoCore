
!Duration class methodsFor: 'extended protocol'!
seconds: seconds nanoSeconds: nanos
	^ self basicNew
		seconds: seconds truncated
		nanoSeconds: seconds fractionPart * NanosInSecond + nanos! !
