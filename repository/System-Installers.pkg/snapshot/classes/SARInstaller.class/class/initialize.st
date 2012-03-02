
!SARInstaller class methodsFor: 'initialization'!
initialize
	"SARInstaller initialize"
	(Smalltalk tools fileList respondsTo: #registerFileReader:)
		ifTrue: [ Smalltalk tools fileList registerFileReader: self ]! !
