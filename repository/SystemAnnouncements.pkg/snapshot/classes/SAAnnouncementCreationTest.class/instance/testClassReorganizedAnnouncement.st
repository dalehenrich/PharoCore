
!SAAnnouncementCreationTest methodsFor: 'testing'!
testClassReorganizedAnnouncement
	self assert: ((ReorganizedEvent 
				class: self class)  asSystemAnnouncement isKindOf: ClassReorganized)! !
