
!LimitedWriteStream methodsFor: 'as yet unclassified'!
pastEndPut: anObject
	collection size >= limit ifTrue: [limitBlock value].  "Exceptional return"
	^ super pastEndPut: anObject! !
