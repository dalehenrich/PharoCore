
!StandardFileStream methodsFor: 'read, write, position'!
readOnlyCopy

	^ self class readOnlyFileNamed: self name.
! !
