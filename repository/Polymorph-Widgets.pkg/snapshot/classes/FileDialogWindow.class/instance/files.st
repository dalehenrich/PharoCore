
!FileDialogWindow methodsFor: 'as yet unclassified'!
files
	"Answer the contents of the selected directory."

	^(self selectedDirectory ifNil: [^#()]) item isNil
		ifTrue: [#()]
		ifFalse: [Cursor wait showWhile: [
				((self cache: self selectedDirectory item) select: self fileSelectionBlock)
					asSortedCollection: self fileSortBlock]]! !
