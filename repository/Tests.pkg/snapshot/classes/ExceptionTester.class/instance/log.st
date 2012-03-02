
!ExceptionTester methodsFor: 'accessing'!
log

	log == nil
		ifTrue: [log := OrderedCollection new].
	^log! !
