
!SmalltalkImage methodsFor: 'sources, change log'!
openSourceFiles

	self imageName = LastImageName 
		ifFalse: ["Reset the author full name to blank when the image gets moved"
			LastImageName := self imageName.
			Author fullName: ''].
	self checkAndOpenSourcesAndChanges.
	SourceFileArray install! !
