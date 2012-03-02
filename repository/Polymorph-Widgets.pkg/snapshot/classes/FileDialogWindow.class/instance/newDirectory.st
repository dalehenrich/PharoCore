
!FileDialogWindow methodsFor: 'as yet unclassified'!
newDirectory
	"Create a new directory within the selected directory."

	|dir dirName title|
	dir := self selectedFileDirectory ifNil: [^self].
	title := 'Create Directory' translated.
	dirName := self
		textEntry: 'Enter directory name' translated
		title: title.
	dirName ifNil: [^self].
	[dir createDirectory: dirName]
		on: Error
		do: [:ex | [((dir fileExists: dirName) or: [(dir directoryNamed: dirName) exists])
					ifTrue: [^self
								alert: 'A file or directory already exists\with the name' withCRs translated, ' "', dirName, '"'
								title: title]] on: Error do: [].
					^self
						alert: 'Invalid directory name' translated, ' "', dirName, '"'
						title: title].
	self
		clearEntryCache;
		updateDirectories! !
