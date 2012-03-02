
!FileContentsBrowser methodsFor: 'filein/fileout'!
fileInClass
	Cursor read showWhile:[
		self selectedClass fileIn.
	].! !
