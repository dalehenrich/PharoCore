
!SmalltalkImage methodsFor: 'sources, change log'!
externalizeSources   
	"Write the sources and changes streams onto external files."
 	"Smalltalk externalizeSources"
	"the logic of this method is complex because it uses changesName and self changesName
	may be this is normal - sd"
	
	| sourcesName changesName aFile |
	sourcesName := self sourcesName.
	(FileDirectory default fileExists: sourcesName)
		ifTrue: [^ self inform:
'Sorry, you must first move or remove the
file named ', sourcesName].
	changesName := self changesName.
	(FileDirectory default fileExists: changesName)
		ifTrue: [^ self inform:
'Sorry, you must first move or remove the
file named ', changesName].

	aFile :=  FileStream newFileNamed: sourcesName.
	aFile nextPutAll: SourceFiles first originalContents.
	aFile close.
	self setMacFileInfoOn: sourcesName.
	SourceFiles at: 1 put: (FileStream readOnlyFileNamed: sourcesName).

	aFile := FileStream newFileNamed: self changesName.
	aFile nextPutAll: SourceFiles last contents.
	aFile close.
	"On Mac, set the file type and creator (noop on other platforms)"
	FileDirectory default
		setMacFileNamed: Smalltalk changesName
		type: 'STch'
		creator: 'FAST'.
	SourceFiles at: 2 put: (FileStream oldFileNamed: changesName).

	self inform: 'Sources successfully externalized'.
! !
