
!Object methodsFor: 'events-accessing'!
hasActionsWithReceiver: anObject

	^self actionMap keys anySatisfy:
		[:eachEventSelector |
			(self actionSequenceForEvent: eachEventSelector)
				anySatisfy: [:anAction | anAction receiver == anObject]]! !
