
!RecentMessageList class methodsFor: 'system startup'!
startUp
	SystemChangeNotifier uniqueInstance notify: self ofAllSystemChangesUsing: #event:.! !
