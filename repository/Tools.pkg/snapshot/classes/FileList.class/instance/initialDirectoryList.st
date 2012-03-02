
!FileList methodsFor: 'initialization'!
initialDirectoryList

	| dirList |
	dirList := (FSFilesystem disk root) directories collect: [ :each |
		FileDirectoryWrapper with: each name: each basename model: self].
	
	dirList isEmpty ifTrue:[
		dirList := Array with: (FileDirectoryWrapper 
			with: FSFilesystem disk workingDirectory
			name: FSFilesystem disk workingDirectory basename 
			model: self)].
		
	^dirList! !
