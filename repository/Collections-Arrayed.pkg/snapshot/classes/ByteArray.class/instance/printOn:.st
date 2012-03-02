
!ByteArray methodsFor: 'printing'!
printOn: aStream

	aStream nextPutAll: '#['.
	self
		do: [ :each | each printOn: aStream ]
		separatedBy: [ aStream nextPut: $ ].
	aStream nextPut: $]! !
