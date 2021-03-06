
!RxCharSetParser methodsFor: 'parsing'!
parseStep

	lookahead = $[ ifTrue:
		[source peek = $:
			ifTrue: [^self parseNamedSet]
			ifFalse: [^self parseCharOrRange]].
	lookahead = $\ ifTrue:
		[^self parseEscapeChar].
	lookahead = $- ifTrue:
		[RxParser signalSyntaxException: 'invalid range'].
	self parseCharOrRange! !
