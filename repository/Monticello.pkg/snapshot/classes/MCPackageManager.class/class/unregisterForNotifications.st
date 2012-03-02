
!MCPackageManager class methodsFor: 'event registration'!
unregisterForNotifications
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self
		! !
