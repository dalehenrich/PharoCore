
!TextStyle methodsFor: 'fonts and font indexes'!
collectionFromFileNamed: fileName 
	"Read the file.  It is an TextStyle whose StrikeFonts are to be added to the system.  (Written by fooling SmartRefStream, so it won't write a DiskProxy!!)  These fonts will be added to the master TextSytle for this font family.  
	To write out fonts: 
		| ff | ff := ReferenceStream fileNamed: 'new fonts'.
		TextSharedInformation at: #forceFontWriting put: true.
		ff nextPut: (TextSharedInformation at: #AFontName).
			'do not mix font families in the TextStyle written out'.
		TextSharedInformation at: #forceFontWriting put: false.
		ff close.

	To read: (TextStyle default collectionFromFileNamed: 'new fonts')
*** Do not remove this method *** "
	| ff this newName style heights |
	ff := ReferenceStream fileNamed: fileName.
	this := ff nextAndClose.	"Only works if file created by special code above"
	newName := this fontArray first familyName.
	this fontArray do: 
		[ :aFont | 
		aFont familyName = newName ifFalse: [ self error: 'All must be same family' ] ].
	style := TextSharedInformation 
		at: newName asSymbol
		ifAbsent: 
			[ ^ TextSharedInformation 
				at: newName asSymbol
				put: this ].	"new family"
	this fontArray do: 
		[ :aFont | 
		"add new fonts"
		heights := style fontArray collect: [ :bFont | bFont height ].
		(heights includes: aFont height) ifFalse: 
			[ style 
				fontAt: style fontArray size + 1
				put: aFont ] ]! !
