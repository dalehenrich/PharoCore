
!FlatMessageListBrowser methodsFor: 'initialization'!
initialize

	super initialize.
	self preference: self getPreferencesList first.
	
	self registerToEvents.
	bindings := Dictionary new.
	" not used yet, but will be used as soon as Announcements will be fully used "
	self registerToAnnouncements! !
