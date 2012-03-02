
!ZnChunkedReadStream methodsFor: 'accessing'!
collectionSpecies
	^ self isBinary ifTrue: [ ByteArray ] ifFalse: [ String ]
	! !
