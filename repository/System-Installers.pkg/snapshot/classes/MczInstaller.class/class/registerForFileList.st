
!MczInstaller class methodsFor: 'services'!
registerForFileList
	Smalltalk globals at: #MCReader ifAbsent: [ Smalltalk tools fileList registerFileReader: self ]! !
