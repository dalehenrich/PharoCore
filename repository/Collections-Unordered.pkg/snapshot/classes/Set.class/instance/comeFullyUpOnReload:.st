
!Set methodsFor: 'objects from disk'!
comeFullyUpOnReload: smartRefStream
	"Symbols have new hashes in this image."

	self rehash.
	"^ self"
! !
