
!FileDialogWindow methodsFor: 'as yet unclassified'!
defaultFileSortBlock
	"Answer the default file stor block"

	^[:de1 :de2 |
		de1 isDirectory = de2 isDirectory
			ifTrue: [de1 name <= de2 name]
			ifFalse: [de1 isDirectory
						ifTrue: [true]
						ifFalse: [de2 isDirectory
									ifTrue: [false]
									ifFalse: [de1 name <= de2 name]]]]! !
