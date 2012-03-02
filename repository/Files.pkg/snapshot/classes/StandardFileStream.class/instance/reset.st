
!StandardFileStream methodsFor: 'access'!
reset
	self ensureOpen.
	self position: 0.! !
