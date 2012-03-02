
!SourceReference methodsFor: 'private'!
findTimestampInSource	
		"Answer the authoring time-stamp for the given method, retrieved from the sources or changes file. Answer the empty string if no time stamp is available."	
			
	| position file preamble stamp tokens stampPosition |

	self fileIndex = 0 ifTrue: [^ String new].  "no source pointer for this method"
	position :=self filePosition.
	file := SourceFiles at: self fileIndex.
	file ifNil: [^ String new].  "sources file not available"
	"file does not exist happens in secure mode"
	"Transcript show: file ; cr."
	file := [file readOnlyCopy] 
			on: FileDoesNotExistException 
			do:[:ex| ^ String new].
	self flag: 'I do not know why 3 is a good number'.
	preamble :=  self getPreambleFrom: file at: (0 max: position - 3).
	(preamble findString: self preambleString startingAt: 1) > 0
			ifTrue: [tokens := Scanner new scanTokens: preamble.
				
				     	stampPosition := tokens indexOf: self stampSymbol.
					stampPosition = 0
						ifTrue:[stamp:= ''.]
						ifFalse: [
							"New format gives change stamp and unified prior pointer"
							stamp := tokens at: stampPosition + 1]]
			ifFalse: [" Name is already defined ->The stamp get lost, maybe after a condenseChanges"
					stamp := '' ].
	file close.
 	^ stamp! !
