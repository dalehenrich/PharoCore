
!FileDialogWindow methodsFor: 'as yet unclassified'!
saveSelectedFile
	"Open a stream on the selected file if available and return it."

	|d f|
	d := self selectedFileDirectory ifNil: [^nil].
	f := self selectedFileName ifNil: [self fileNameText trimBoth].
	f ifEmpty: [^nil].
	((FileDirectory extensionFor: f) isEmpty and: [self defaultExtension notNil])
		 ifTrue: [f := FileDirectory fileName: f extension: self defaultExtension].
	^[d newFileNamed: f]
		on: FileExistsException do: [
			(self
				proceed: ('The file {1} already exists.
Overwrite the file?' translated format: {f printString})
				title: 'Save File' translated)
			ifTrue: [d forceNewFileNamed: f]]! !
