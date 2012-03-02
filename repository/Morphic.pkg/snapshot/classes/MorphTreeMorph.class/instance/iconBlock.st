
!MorphTreeMorph methodsFor: 'accessing'!
iconBlock
	^ iconBlock ifNil: [[:node | node icon]]! !
