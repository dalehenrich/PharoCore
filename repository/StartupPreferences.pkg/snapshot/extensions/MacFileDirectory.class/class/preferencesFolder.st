
!MacFileDirectory class methodsFor: '*StartupPreferences'!
preferencesFolder

	| folderStringName list parentPath path directory |
	folderStringName := '.config/pharo/',SystemVersion current major asString,'.',SystemVersion current minor asString.
	list := (self default fullName subStrings: self slash) copyFrom: 1 to: 2.
	parentPath := list joinUsing: self slash.
	parentPath := self slash,parentPath, self slash.
	path := parentPath, folderStringName,self slash.
	directory := self forFileName: path.
		
	^ directory! !
