
!PragmaCollector methodsFor: 'system changes'!
noMoreNotifications
	"Do not receiver any system change notification anymore"
	SystemChangeNotifier uniqueInstance noMoreNotificationsFor: self
! !
