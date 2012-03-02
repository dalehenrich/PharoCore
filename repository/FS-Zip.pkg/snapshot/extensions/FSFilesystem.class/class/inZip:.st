
!FSFilesystem class methodsFor: '*fs-zip'!
inZip: aReference
	^ self store: (FSZipStore reference: aReference)! !
