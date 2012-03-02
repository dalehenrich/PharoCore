
!ZnChunkedReadStream methodsFor: 'testing'!
atEnd
	self ensureChunkOrAtEnd.
	^ atEnd! !
