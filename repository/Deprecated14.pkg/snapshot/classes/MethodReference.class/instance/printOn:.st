
!MethodReference methodsFor: 'queries'!
printOn: aStream
	"Print the receiver on a stream"

	super printOn: aStream.
	aStream nextPutAll: ' ', self actualClass name, ' >> #', methodSymbol! !
