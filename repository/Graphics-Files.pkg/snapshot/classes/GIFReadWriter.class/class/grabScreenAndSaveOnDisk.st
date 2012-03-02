
!GIFReadWriter class methodsFor: 'examples'!
grabScreenAndSaveOnDisk
	"GIFReaderWriter grabScreenAndSaveOnDisk"
	| form fileName |
	form := Form fromUser.
	form bits size = 0 ifTrue: [ ^ Beeper beep ].
	fileName := FileDirectory default 
		nextNameFor: 'Pharo'
		extension: 'gif'.
	UIManager default 
		informUser: 'Writing ' translated, fileName
		during: 
			[ GIFReadWriter 
				putForm: form
				onFileNamed: fileName ]! !
