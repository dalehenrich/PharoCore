
!CodeLoader methodsFor: 'loading'!
loadSourceFiles: anArray
	"Load all the source files in the given array."
	| loader |
	loader := UrlCodeFileLoader default.
	sourceFiles := anArray collect:[:name| | request |
		request := self createRequestFor: name in: loader.
		request].
! !
