
!TestCase class methodsFor: 'events'!
announcer 
	^ self announcers at: self ifAbsentPut: [ Announcer new ]! !
