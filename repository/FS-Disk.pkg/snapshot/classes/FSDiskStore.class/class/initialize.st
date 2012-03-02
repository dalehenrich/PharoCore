
!FSDiskStore class methodsFor: 'class initialization'!
initialize
	self useFilePlugin.
	Smalltalk addToStartUpList: self. ! !
