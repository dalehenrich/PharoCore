
!MorphTreeColumnButton methodsFor: 'accessing'!
wantsDroppedMorph: aMorph event: anEvent 
	^ model container columnDropUnabled and: [(aMorph isKindOf: TransferMorph) and: [(aMorph passenger isKindOf: MorphTreeColumn) and: [aMorph passenger ~= self model]]]! !
