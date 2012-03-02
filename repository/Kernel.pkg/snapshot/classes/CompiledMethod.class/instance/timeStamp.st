
!CompiledMethod methodsFor: 'printing'!
timeStamp
	"Answer the authoring time-stamp for the given method, retrieved from the sources or changes file. Answer the empty string if no time stamp is available."

	"(CompiledMethod compiledMethodAt: #timeStamp) timeStamp"

	| file preamble stamp tokens tokenCount |
	self fileIndex = 0 ifTrue: [^ String new].  "no source pointer for this method"
	file := SourceFiles at: self fileIndex.
	file ifNil: [^ String new].  "sources file not available"
	"file does not exist happens in secure mode"
	file := [file readOnlyCopy] 
			on: FileDoesNotExistException 
			do:[:ex| ^ String new].
	preamble := self getPreambleFrom: file at: (0 max: self filePosition - 3).
		stamp := String new.
		tokens := (preamble findString: 'methodsFor:' startingAt: 1) > 0
			ifTrue: [Scanner new scanTokens: preamble]
			ifFalse: [Array new  "ie cant be back ref"].
		(((tokenCount := tokens size) between: 7 and: 8) and: [(tokens at: tokenCount - 5) = #methodsFor:])
			ifTrue:
				[(tokens at: tokenCount - 3) = #stamp:
					ifTrue: ["New format gives change stamp and unified prior pointer"
							stamp := tokens at: tokenCount - 2]].
		((tokenCount between: 5 and: 6) and: [(tokens at: tokenCount - 3) = #methodsFor:])
			ifTrue:
				[(tokens at: tokenCount  - 1) = #stamp:
					ifTrue: ["New format gives change stamp and unified prior pointer"
						stamp := tokens at: tokenCount]].
	file close.
	^ stamp
! !
