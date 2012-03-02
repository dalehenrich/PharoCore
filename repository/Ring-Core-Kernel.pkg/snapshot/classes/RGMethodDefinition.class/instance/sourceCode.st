
!RGMethodDefinition methodsFor: 'accessing'!
sourceCode

	self isActive 
		ifTrue: [ ^ self compiledMethod getSource ].
	self isHistorical
		ifTrue: [ ^ self sourceCodeAtPointer ifNil:[ self compiledMethod ifNil:[ sourceCode ] ifNotNil:[ :cm| cm getSource ] ] ].	
	^ sourceCode! !
