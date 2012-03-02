
!WeakAnnouncementSubscription class methodsFor: 'finalization support'!
finalizationList
	
	^ FinalizationList ifNil: [ FinalizationList := WeakFinalizationList new ].! !
