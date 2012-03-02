
!MCMockDependency methodsFor: 'accessing'!
children
	^ children collect: [:ea | self class fromTree: ea]! !
