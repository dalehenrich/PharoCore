
!SmalltalkImage methodsFor: 'system attribute'!
platformName
	"Return the name of the platform we're running on"
	"Smalltalk platformName"

	^ self vm getSystemAttribute: 1001! !
