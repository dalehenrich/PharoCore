
!TempVariableNode methodsFor: 'printing'!
printDefinitionForClosureAnalysisOn: aStream 
	| refs |
	aStream
		nextPut: ${;
		nextPutAll: key.
	definingScope ifNotNil: [definingScope blockExtent ifNotNil: [:be| aStream nextPutAll: ' d@'; print: be first]].
	readingScopes notNil ifTrue:
		[refs := Set new.
		readingScopes do: [:elems| refs addAll: elems].
		refs asSortedCollection do: [:read| aStream nextPutAll: ' r@'; print: read]].
	writingScopes notNil ifTrue:
		[refs := Set new.
		writingScopes do: [:elems| refs addAll: elems].
		refs asSortedCollection do: [:write| aStream nextPutAll: ' w@'; print: write]].
	aStream nextPut: $}! !
