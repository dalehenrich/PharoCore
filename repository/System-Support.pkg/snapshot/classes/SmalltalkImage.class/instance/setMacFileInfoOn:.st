
!SmalltalkImage methodsFor: 'miscellaneous'!
setMacFileInfoOn: aString
	"On Mac, set the file type and creator (noop on other platforms)"
	FileDirectory default
		setMacFileNamed: aString
		type: 'STch'
		creator: 'FAST'.! !
