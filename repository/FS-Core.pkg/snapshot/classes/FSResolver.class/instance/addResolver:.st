
!FSResolver methodsFor: 'accessing'!
addResolver: aResolver
	next
		ifNil: [next := aResolver]
		ifNotNil: [next addResolver: aResolver]! !
