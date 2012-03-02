
!CodeLoader methodsFor: 'installing'!
installSourceFiles
	"Install the previously loaded source files"

	sourceFiles isNil
		ifTrue: [ ^ self ].
	sourceFiles do: [ :req |
		req startRetrieval. 
		self installSourceFile: req ].
	sourceFiles := nil! !
