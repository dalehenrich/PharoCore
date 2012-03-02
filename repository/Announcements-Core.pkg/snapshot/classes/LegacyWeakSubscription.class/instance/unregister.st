
!LegacyWeakSubscription methodsFor: 'finalization'!
unregister

	| sub |
	sub := self subscriber.
	sub ifNotNil: [
		self weakRegistry 
			remove: sub ]
		! !
