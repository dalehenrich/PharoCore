
!SystemAnnouncer class methodsFor: 'initialization'!
initialize
	"self initialize"
	
	SystemChangeNotifier uniqueInstance 
		notify: self ofAllSystemChangesUsing: #announceFromEvent:! !
