
!SystemNavigation methodsFor: 'query'!
allCallsOn: aSymbol from: aClass
	"Answer a SortedCollection of all the methods that call on aSymbol."

	| aSortedCollection special byte |
	aSortedCollection := SortedCollection new.
	special := Smalltalk hasSpecialSelector: aSymbol ifTrueSetByte: [:b | byte := b ].
	aClass withAllSubclassesDo: [ :class |
		(class whichSelectorsReferTo: aSymbol special: special byte: byte) do: [:sel |
				aSortedCollection add: (self createMethodNamed: sel realParent: class)]].
	^aSortedCollection! !
