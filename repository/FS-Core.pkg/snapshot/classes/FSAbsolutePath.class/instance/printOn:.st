
!FSAbsolutePath methodsFor: 'printing'!
printOn: aStream
	aStream nextPutAll: 'FSPath'.
	self isRoot
		ifTrue: [aStream nextPutAll: ' root']
		ifFalse:
			[1 to: self size do:
				[:i |
				aStream 
					nextPutAll: ' / ''';
				 	nextPutAll: (self at: i);
					nextPut: $']]! !
