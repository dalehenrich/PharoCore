
!FT2Face methodsFor: 'printing'!
printOn: aStream 
	super printOn: aStream.
	handle isNil ifTrue: [^self].
	"self familyName isNil ifTrue: [ self loadFields ]."
	aStream
		nextPut: $[;
		nextPutAll: (self familyName ifNil: ['?']);
		space;
		nextPutAll: (self styleName ifNil: ['?']);
		nextPut: $]! !
