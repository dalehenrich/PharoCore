
!OSPlatform class methodsFor: 'system attributes'!
osVersion
	"Return the version number string of the platform we're running on"
	"OSPlatform osVersion"

	^(Smalltalk vm getSystemAttribute: 1002) asString! !
