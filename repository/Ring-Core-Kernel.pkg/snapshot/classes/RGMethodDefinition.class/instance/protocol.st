
!RGMethodDefinition methodsFor: 'accessing'!
protocol

	self isActive 
		ifTrue: [ ^ self compiledMethod category ].
	self isHistorical
		ifTrue: [ ^ self protocolAtPointer ifNil:[ self compiledMethod ifNil:[ protocol ] ifNotNil:[ :cm| cm category ] ] ].
	^ protocol			! !
