
!AnnouncementSetTest methodsFor: 'testing'!
testInstanceCreation
	|set|
	set := AnnouncementMockA, AnnouncementMockB.
	self assert: set size = 2 ! !
