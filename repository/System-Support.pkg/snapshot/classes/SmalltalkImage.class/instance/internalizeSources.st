
!SmalltalkImage methodsFor: 'sources, change log'!
internalizeSources    
		"Smalltalk internalizeSources"
	"Bring the sources and changes files into memory-resident filestreams, for faster access and freedom from file-system interface.  1/29/96 sw"

	| reply aName aFile |
	reply := self confirm:  'CAUTION -- do not undertake this lightly!!
If you have backed up your system and
are prepared to face the consequences of
the requested internalization of sources,
hit Yes.  If you have any doubts, hit No
to back out with no harm done.'.

	(reply ==  true) ifFalse:
		[^ self inform: 'Okay - abandoned'].

	aName := self sourcesName.
	(aFile := SourceFiles first) == nil ifTrue:
		[(FileDirectory default fileExists: aName)
			ifFalse: [^ Halt halt: 'Cannot locate ', aName, ' so cannot proceed.'].
		aFile := FileStream readOnlyFileNamed: aName].
	SourceFiles at: 1 put: (ReadWriteStream with: aFile contentsOfEntireFile).

	aName := self changesName.
	(aFile := SourceFiles last) == nil ifTrue:
		[(FileDirectory default fileExists: aName)
			ifFalse: [^ Halt halt: 'Cannot locate ', aName, ' so cannot proceed.'].
		aFile := FileStream readOnlyFileNamed: aName].
	SourceFiles at: 2 put: (ReadWriteStream with: aFile contentsOfEntireFile).

	self inform: 'Okay, sources internalized'! !
