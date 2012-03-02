
!HostSystemMenusMacOSX methodsFor: 'translation'!
resolveModifiersInteger: modifers
	
	| integer |
	integer := 0.
	#(#shift 1 #option 2 #control 4 #nocommand 8) 
		pairsDo: [:style :bitOffset |
			(modifers includes: style) ifTrue: [integer := integer bitOr: bitOffset]].
	^integer
! !
