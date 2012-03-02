
!Gofer methodsFor: 'initialization'!
initialize
	self enablePackageCache; enableRepositoryErrors.
	references := OrderedCollection new.
	repositories := OrderedCollection new! !
