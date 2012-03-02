
!LegacyWeakSubscription methodsFor: 'finalization'!
register
	self weakRegistry 
		add: self subscriber executor: self! !
