
!FSPath methodsFor: 'navigating'!
resolveString: aString
	"Treat strings as relative paths with a single element."
	
	^ self / aString! !
