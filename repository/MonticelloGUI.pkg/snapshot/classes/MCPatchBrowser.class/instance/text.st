
!MCPatchBrowser methodsFor: 'text'!
text
	^ selection ifNil: [''] ifNotNil: [selection source]! !
