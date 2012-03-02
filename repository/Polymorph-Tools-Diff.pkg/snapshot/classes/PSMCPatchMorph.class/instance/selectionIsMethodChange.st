
!PSMCPatchMorph methodsFor: 'as yet unclassified'!
selectionIsMethodChange
	"Answer whether the currently selected change is for a method."

	^self selectedChange isNil
		ifTrue: [false]
		ifFalse: [self selectedChange definition isMethodDefinition]! !
