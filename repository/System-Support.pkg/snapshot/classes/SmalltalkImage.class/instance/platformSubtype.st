
!SmalltalkImage methodsFor: 'system attribute'!
platformSubtype
	"Return the subType of the platform we're running on"
	"Smalltalk platformSubtype"

	^ self vm getSystemAttribute: 1003! !
