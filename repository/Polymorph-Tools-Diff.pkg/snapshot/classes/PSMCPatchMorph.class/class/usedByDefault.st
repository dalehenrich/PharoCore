
!PSMCPatchMorph class methodsFor: 'as yet unclassified'!
usedByDefault
	"Answer whether the Polymorph diff tools should be used with Monticello."

	^UsedByDefault ifNil: [UsedByDefault := true]! !
