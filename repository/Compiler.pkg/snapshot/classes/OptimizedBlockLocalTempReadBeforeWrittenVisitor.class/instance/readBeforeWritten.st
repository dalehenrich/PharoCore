
!OptimizedBlockLocalTempReadBeforeWrittenVisitor methodsFor: 'accessing'!
readBeforeWritten
	^readBeforeWritten ifNil: [IdentitySet new]! !
