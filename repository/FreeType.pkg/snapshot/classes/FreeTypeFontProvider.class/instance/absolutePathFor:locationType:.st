
!FreeTypeFontProvider methodsFor: 'file paths'!
absolutePathFor: path locationType: aSymbol
	"answer an absolute path from an absolute or relative path according to the location type aSymbol"

	aSymbol = #imageRelative
		 ifTrue:[^Smalltalk imagePath, FileDirectory slash, path ].
	aSymbol = #vmRelative 
		ifTrue:[^Smalltalk vmPath ", FileDirectory slash" , path].
	^path
	
	
	
			
	
	! !
