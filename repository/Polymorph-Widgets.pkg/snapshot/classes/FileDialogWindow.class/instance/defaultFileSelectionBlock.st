
!FileDialogWindow methodsFor: 'as yet unclassified'!
defaultFileSelectionBlock
	"Answer the default file selection block."

	^[:de |
		de isDirectory
			ifTrue: [self showDirectoriesInFileList]
			ifFalse: [self fileNamePattern match: de name]]! !
