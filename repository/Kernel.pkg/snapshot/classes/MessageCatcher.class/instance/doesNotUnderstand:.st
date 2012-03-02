
!MessageCatcher methodsFor: 'as yet unclassified'!
doesNotUnderstand: aMessage

	accumulator ifNotNil: [accumulator add: aMessage].
	^ aMessage! !
