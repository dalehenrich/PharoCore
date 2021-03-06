
!OSPlatform class methodsFor: 'private'!
determineActivePlatformStartingAt: parentClass
	"Determine the current platform starting at parentClass.
	This is a potentially recursive process as we want to determine the most specific (in terms of subclasses) platform available."
	"OSPlatform determineActivePlatformStartingAt: OSPlatform"

	| platformClass |
	parentClass subclasses isEmpty
		ifTrue: [^parentClass].

	"Look for the matching platform class"
	platformClass := parentClass allSubclasses detect:[:any| any isActivePlatform] ifNone:[nil].

	"Check if there is a more specific subclass"
	^self determineActivePlatformStartingAt: platformClass! !
