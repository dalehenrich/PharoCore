
!SystemNavigation methodsFor: '*Tools-Browser'!
browseMethodsWhoseNamesContain: aString
	"Launch a tool which shows all methods whose names contain the given 	string; case-insensitive."

	^ (Smalltalk tools messageNames 
		methodBrowserSearchingFor: aString) openInWorld! !
