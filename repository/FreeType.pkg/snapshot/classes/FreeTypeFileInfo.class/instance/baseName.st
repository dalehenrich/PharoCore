
!FreeTypeFileInfo methodsFor: 'accessing'!
baseName
	^(FileDirectory baseNameFor: (FileDirectory localNameFor: absolutePath))! !
