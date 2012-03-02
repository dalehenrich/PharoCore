
!ClassBuilder class methodsFor: 'cleanup obsolete classes'!
reallyObsoleteMetaclasses
	^ Metaclass allInstances select: [:each | self isReallyObsolete: each].! !
