
Model subclass: #FileList
	instanceVariableNames: 'reference volumeList volumeListIndex list listIndex pattern sortMode brevityState currentDirectorySelected dirSelectionBlock modalView ok contents optionalButtonSpecs'
	classVariableNames: 'FileReaderRegistry RecentDirs'
	poolDictionaries: ''
	category: 'Tools-FileList'!

FileList class
	instanceVariableNames: 'searchList'!

!FileList commentStamp: 'StephaneDucasse 3/28/2010 20:44' prior: 0!
A FileList is a tool to deal with files.

FileList open				"open FileList"!
