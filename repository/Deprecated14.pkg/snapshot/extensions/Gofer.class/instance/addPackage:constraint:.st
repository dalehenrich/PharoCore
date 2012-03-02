
!Gofer methodsFor: '*Deprecated14'!
addPackage: aString constraint: aBlock
	self
		deprecated: 'Instead of #addPackage:constraint: simply use #package:constraint:'
		on: '14 December 2009'
		in: 'Pharo1.2'.
	self package: aString constraint: aBlock! !
