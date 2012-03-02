
!FreeTypeFontProvider methodsFor: 'loading and updating'!
updateFromDirectory: aDirectory locationType: aSymbol done: aSet
	"get info from fonts in aDirectory"
	
	(aSet includes: aDirectory) ifTrue:[^self].
	aSet add: aDirectory.
	aDirectory entries do:[:each |
		each isDirectory ifFalse:[
			"SUSE 10.2 has lots of files ending .gz that aren't fonts.
			We skip them to save time'"
			((each name beginsWith:'.') or:[each name asLowercase endsWith:'.gz'])
				ifFalse:[
					self updateFromFileEntry: each directory: aDirectory  locationType: aSymbol]]].
	aDirectory entries do:[:each |
		each isDirectory ifTrue:[
			self updateFromDirectory: (aDirectory directoryNamed: each name) locationType: aSymbol done: aSet]].	
			
	
	! !
