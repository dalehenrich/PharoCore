
!FSFilesystem methodsFor: 'public'!
childrenAt: aResolvable
	^ Array streamContents: [ :out | 
		self childrenAt: aResolvable do: [ :path|
			out nextPut: path ]].! !
