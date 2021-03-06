
!SourceFileArray methodsFor: '*Ring-Core-Kernel'!
timeStampAt: sourcePointer for: sourceDataPointers
	"Answer the authoring time-stamp for the given method, retrieved from the sources or changes file. Answer the empty string if no time stamp is available."		
				
	| preamble stamp tokens stampPosition |
	stamp := ''.
	preamble := self sourcedDataAt: sourcePointer.
	(preamble findString: (sourceDataPointers key) startingAt: 1) > 0
			ifTrue: [ tokens := Scanner new scanTokens: preamble.
				     	stampPosition := tokens indexOf: sourceDataPointers value.
					stampPosition = 0
						ifFalse: [
							"New format gives change stamp and unified prior pointer"
							stamp := tokens at: stampPosition + 1]].
 	^stamp! !
