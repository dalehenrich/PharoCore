
!SmalltalkImage methodsFor: 'system attribute'!
osVersion
	"Return the operating system version"
	"SmalltalkImage current osVersion"

	^self vm getSystemAttribute: 1002! !
