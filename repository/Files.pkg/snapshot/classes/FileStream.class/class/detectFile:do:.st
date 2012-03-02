
!FileStream class methodsFor: 'instance creation'!
detectFile: aBlock do: anotherBlock

	^aBlock value
		ifNil: [nil]
      	ifNotNil: [:file| [anotherBlock value: file] ensure: [file close]]! !
