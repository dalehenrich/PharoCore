
!MCHttpRepository methodsFor: 'actions'!
flushCache
	super flushCache.
	readerCache := nil.! !
