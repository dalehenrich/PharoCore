
!MacFileDirectory class methodsFor: '*StartupPreferences'!
preferencesGeneralFolder

	| folderStringName list parentPath path directory |
	folderStringName := '.config/pharo/general'.
	list := (self default fullName subStrings: self slash) copyFrom: 1 to: 2.
	parentPath := list joinUsing: self slash.
	parentPath := self slash,parentPath, self slash.
	path := parentPath, folderStringName,self slash.
	directory := self forFileName: path.
		
	^ directory! !
