
!AnnouncementSubscription methodsFor: 'announcing'!
deliver: anAnnouncement
	" deliver an announcement to receiver. In case of failure, it will be handled in separate process"

	^ (self handles: anAnnouncement class ) ifTrue: [
		[action cull: anAnnouncement cull: announcer] 
			on: UnhandledError fork: [:ex | ex pass ]]! !
