
!ZipArchive class methodsFor: 'fileIn/Out'!
extractAllIn: aFileName
	"Service method to extract all contents of a zip."
	| directory |
	directory := self directorySelectorModel modalFolderSelector ifNil: [^ self].
	^ (self new) 
		readFrom: aFileName;
		extractAllTo: directory.! !
