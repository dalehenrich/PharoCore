
!FlatMessageListBrowser methodsFor: 'text'!
displayIfByteCode: aMethodReference

	 | method |
	aMethodReference isMethod 
		ifTrue: [ method := aMethodReference compiledMethod ].
	method ifNotNil: [ :each | ^each method symbolic ].
	^self unvailableByteCodeLabel! !
