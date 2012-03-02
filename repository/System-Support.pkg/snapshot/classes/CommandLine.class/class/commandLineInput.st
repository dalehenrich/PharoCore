
!CommandLine class methodsFor: 'class initialization'!
commandLineInput
	"self commandLineInput"
	
	| documentPath args |
	args := OrderedCollection withAll: Smalltalk arguments.
	documentPath := Smalltalk documentPath.
	documentPath isEmptyOrNil
		ifFalse: [ args addFirst: documentPath ].
 	^ args.! !
