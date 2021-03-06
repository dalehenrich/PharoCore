
!RGAbstractContainer methodsFor: 'testing'!
includesElementNamed: elementName in: aCollection
	| aSymbol |
	
	aSymbol:= elementName asSymbol.
	^aCollection isDictionary
		ifTrue: [ aCollection includesKey:  aSymbol ]
		ifFalse:[ (aCollection detect:[ :each| each name = aSymbol ] ifNone:[ nil ]) notNil ]! !
