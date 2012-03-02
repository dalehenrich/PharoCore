
!SubscriptionRegistry methodsFor: 'private'!
protected: aBlock
	^ monitor critical: [ aBlock value ]! !
