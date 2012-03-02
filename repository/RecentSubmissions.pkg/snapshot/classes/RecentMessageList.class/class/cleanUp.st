
!RecentMessageList class methodsFor: 'cleanup'!
cleanUp
	self allInstancesDo: [:rml| rml initialize].! !
