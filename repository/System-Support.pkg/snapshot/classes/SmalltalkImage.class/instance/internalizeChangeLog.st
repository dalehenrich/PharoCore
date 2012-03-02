
!SmalltalkImage methodsFor: 'sources, change log'!
internalizeChangeLog    
		"Smalltalk internalizeChangeLog"
	"Bring the changes file into a memory-resident filestream, for faster access and freedom from external file system.  1/31/96 sw"

	| reply aName aFile |
	reply := self confirm:  'CAUTION -- do not undertake this lightly!!
If you have backed up your system and
are prepared to face the consequences of
the requested internalization of sources,
hit Yes.  If you have any doubts, hit No
to back out with no harm done.'.

	(reply ==  true) ifFalse:
		[^ self inform: 'Okay - abandoned'].

	aName := Smalltalk changesName.
	(aFile := SourceFiles last) == nil ifTrue:
		[(FileDirectory default fileExists: aName)
			ifFalse: [^ Halt halt: 'Cannot locate ', aName, ' so cannot proceed.'].
		aFile := FileStream readOnlyFileNamed: aName].
	SourceFiles at: 2 put: (ReadWriteStream with: aFile contentsOfEntireFile).

	self inform: 'Okay, changes file internalized'! !
