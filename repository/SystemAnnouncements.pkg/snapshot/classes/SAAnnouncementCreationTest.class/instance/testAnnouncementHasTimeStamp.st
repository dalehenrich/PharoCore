
!SAAnnouncementCreationTest methodsFor: 'testing'!
testAnnouncementHasTimeStamp
	self assert: ((AddedEvent classCategory: 'XXX') asSystemAnnouncement timeStamp <= TimeStamp current)! !
