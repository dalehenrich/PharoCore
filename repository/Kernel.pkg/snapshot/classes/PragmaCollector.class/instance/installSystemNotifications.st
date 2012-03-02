
!PragmaCollector methodsFor: 'system changes'!
installSystemNotifications
	"Allows myself to be kept up-to-date regarding system changes"
	SystemChangeNotifier uniqueInstance 
		notify: self
		ofAllSystemChangesUsing: #event:! !
