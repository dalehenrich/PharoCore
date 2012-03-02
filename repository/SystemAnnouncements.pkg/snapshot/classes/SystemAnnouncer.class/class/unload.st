
!SystemAnnouncer class methodsFor: 'initialization'!
unload
	SystemChangeNotifier uniqueInstance 
		noMoreNotificationsFor: self! !
