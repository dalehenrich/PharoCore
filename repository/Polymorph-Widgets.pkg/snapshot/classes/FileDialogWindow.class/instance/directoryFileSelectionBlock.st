
!FileDialogWindow methodsFor: 'as yet unclassified'!
directoryFileSelectionBlock
	"Answer the directory file selection block."

	^[:de |
		de isDirectory
			ifTrue: [self showDirectoriesInFileList]
			ifFalse: [false]] ! !
