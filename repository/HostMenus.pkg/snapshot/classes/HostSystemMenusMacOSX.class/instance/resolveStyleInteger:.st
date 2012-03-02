
!HostSystemMenusMacOSX methodsFor: 'translation'!
resolveStyleInteger: aStyle
	
	| integer |
	integer := 0.
	#(#bold 1 #italic 2 #underline 4 #outline 8 #shadow 16) 
		pairsDo: [:style :bitOffset |
			(aStyle includes: style) ifTrue: [integer := integer bitOr: bitOffset]].
	^integer
! !
