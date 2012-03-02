
!MCConfiguration methodsFor: 'copying'!
postCopy
	dependencies := dependencies shallowCopy.
	repositories := repositories shallowCopy.! !
