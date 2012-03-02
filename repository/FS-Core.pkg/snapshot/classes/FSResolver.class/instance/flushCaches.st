
!FSResolver methodsFor: 'accessing'!
flushCaches
	self flushLocalCache.
	next ifNotNil: [next flushCaches]! !
