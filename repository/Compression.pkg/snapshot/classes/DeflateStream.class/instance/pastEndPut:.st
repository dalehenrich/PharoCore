
!DeflateStream methodsFor: 'accessing'!
pastEndPut: anObject
	self deflateBlock.
	^self nextPut: anObject! !
