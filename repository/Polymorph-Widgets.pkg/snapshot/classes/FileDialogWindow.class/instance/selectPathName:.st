
!FileDialogWindow methodsFor: 'as yet unclassified'!
selectPathName: aString
	"Select the directory and set the file name text
	from the given string."

	|dir local|
	(FileDirectory default directoryExists: aString)
		ifTrue: [self selectDirectory: (FileDirectory on: aString)]
		ifFalse: [((FileDirectory on: '') directoryExists: aString)
					ifTrue: [^self selectDirectory: (FileDirectory on: aString)].
				dir := FileDirectory forFileName: aString.
				dir exists
					ifTrue: [(dir directoryExists: aString)
								ifTrue: [self selectDirectory: (dir directoryNamed: aString)]
								ifFalse: [self selectDirectory: dir.
										local := FileDirectory localNameFor: aString.
										(local notEmpty and: [FileDirectory isLegalFileName: local])
											ifTrue: [self fileNameText: local]]]
					ifFalse: [self selectDirectory: FileDirectory default.
							self fileNameText: '']]! !
