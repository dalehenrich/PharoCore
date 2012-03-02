
!PasteUpMorph class methodsFor: 'system startup'!
shutDown
	
	World ifNotNil:[
		World triggerEvent: #aboutToLeaveWorld.
	].! !
