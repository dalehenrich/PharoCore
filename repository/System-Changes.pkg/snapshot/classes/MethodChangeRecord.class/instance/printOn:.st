
!MethodChangeRecord methodsFor: 'printing'!
printOn: strm

	super printOn: strm.
	strm nextPutAll: ' ('; print: changeType; nextPutAll: ')'! !
