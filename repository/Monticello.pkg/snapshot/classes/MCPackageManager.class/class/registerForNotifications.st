
!MCPackageManager class methodsFor: 'event registration'!
registerForNotifications
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self.
	self reregisterForNotificationsWith: SystemChangeNotifier uniqueInstance.! !
